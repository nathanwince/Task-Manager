from fastapi import APIRouter, Depends, HTTPException, status, Response
from sqlalchemy.orm import Session
from api.controllers import auth as controller
from api.controllers.user import get_user_progress  # Import the progress function
from api.dependencies.database import get_db
from api.schemas import user as schema


router = APIRouter(
    tags=['Users'],
    prefix="/users"
)

@router.post("/", response_model=schema.UserOut, status_code=status.HTTP_201_CREATED)
def create_user(request: schema.UserCreate, db: Session = Depends(get_db)):
    return controller.create_user(db=db, user=request)

@router.get("/{user_id}", response_model=schema.UserOut)
def read_user(user_id: int, db: Session = Depends(get_db)):
    user = controller.get_user(db, user_id=user_id)
    if not user:
        raise HTTPException(status_code=status.HTTP_404_NOT_FOUND, detail="User not found")
    return user

@router.put("/{user_id}", response_model=schema.UserOut)
def update_user(user_id: int, request: schema.UserUpdate, db: Session = Depends(get_db)):
    user = controller.update_user(db=db, user_id=user_id, request=request)
    if not user:
        raise HTTPException(status_code=status.HTTP_404_NOT_FOUND, detail="User not found")
    return user

@router.delete("/{user_id}", status_code=status.HTTP_204_NO_CONTENT)
def delete_user(user_id: int, db: Session = Depends(get_db)):
    if not controller.delete_user(db=db, user_id=user_id):
        raise HTTPException(status_code=status.HTTP_404_NOT_FOUND, detail="User not found")
    return Response(status_code=status.HTTP_204_NO_CONTENT)

# New route to get user's streak and task progress
@router.get("/users/{user_id}/progress", response_model=schema.UserProgress)
def get_user_streak_progress(user_id: int, db: Session = Depends(get_db)):
    return get_user_progress(db, user_id)
