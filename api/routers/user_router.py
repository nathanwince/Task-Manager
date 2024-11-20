from fastapi import APIRouter, Depends, HTTPException, status, Response
from sqlalchemy.orm import Session
from api.controllers.auth import create_user as create_user_controller, authenticate_user
from api.controllers.user import get_user_progress
from api.dependencies.database import get_db
from api.models.user import User
from api.models.task import Task
from api.schemas.user import UserCreate, UserLogin, UserProgress, UserOut, UserUpdate
from passlib.context import CryptContext


router = APIRouter(
    tags=['Users'],
    prefix="/users"
)

# Create a new user
@router.post("/", response_model=UserOut, status_code=status.HTTP_201_CREATED)
def create_user(request: UserCreate, db: Session = Depends(get_db)):
    return create_user_controller(db=db, user=request)

# Read user by ID
@router.get("/{user_id}", response_model=UserOut)
def read_user(user_id: int, db: Session = Depends(get_db)):
    user = db.query(User).filter(User.id == user_id).first()
    if not user:
        raise HTTPException(status_code=status.HTTP_404_NOT_FOUND, detail="User not found")
    return user

# Update user details
@router.put("/{user_id}", response_model=UserOut)
def update_user(user_id: int, request: UserUpdate, db: Session = Depends(get_db)):
    user = db.query(User).filter(User.id == user_id).first()
    if not user:
        raise HTTPException(status_code=status.HTTP_404_NOT_FOUND, detail="User not found")
    for key, value in request.dict().items():
        setattr(user, key, value)
    db.commit()
    db.refresh(user)
    return user

# Delete user by ID
@router.delete("/{user_id}", status_code=status.HTTP_204_NO_CONTENT)
def delete_user(user_id: int, db: Session = Depends(get_db)):
    user = db.query(User).filter(User.id == user_id).first()
    if not user:
        raise HTTPException(status_code=status.HTTP_404_NOT_FOUND, detail="User not found")
    db.delete(user)
    db.commit()
    return Response(status_code=status.HTTP_204_NO_CONTENT)

# Get user's streak and task progress
@router.get("/{user_id}/progress", response_model=UserProgress)
def get_user_streak_progress(user_id: int, db: Session = Depends(get_db)):
    print(f"Fetching progress for user_id: {user_id}")
    return get_user_progress(db, user_id)


# New Login Endpoint
@router.post("/login/")
def login_user(user: UserLogin, db: Session = Depends(get_db)):
    db_user = authenticate_user(db, email_or_phone=user.email, password=user.password)
    return {
        "id": db_user.id,
        "name": db_user.name,
        "email": db_user.email,
        "streak_count": db_user.streak_count,
        "longest_streak": db_user.longest_streak,
        "tasks_completed": db_user.tasks_completed,
    }


# Fetch profile stats for the user
@router.get("/{user_id}/profile", response_model=dict)
def get_user_profile(user_id: int, db: Session = Depends(get_db)):
    # Fetch the user
    user = db.query(User).filter(User.id == user_id).first()
    if not user:
        raise HTTPException(status_code=status.HTTP_404_NOT_FOUND, detail="User not found")

    # Dynamically calculate the number of completed tasks
    tasks_completed = db.query(Task).filter(Task.user_id == user_id, Task.completed == True).count()

    # Other stats
    longest_streak = user.longest_streak  # Assuming this is in the User model
    account_created = user.created_at.strftime("%Y-%m-%d")  # Format the account creation date

    # Return the data as a dictionary
    return {
        "name": user.name,
        "account_created": account_created,
        "tasks_completed": tasks_completed,
        "longest_streak": longest_streak,
    }
