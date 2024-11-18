# controllers/auth.py
from sqlalchemy.orm import Session
from fastapi import HTTPException, status
from api.models.user import User
from api.schemas.user import UserCreate
from passlib.context import CryptContext

pwd_context = CryptContext(schemes=["bcrypt"], deprecated="auto")

def create_user(db: Session, user: UserCreate):
    # Check if email already exists
    existing_user = db.query(User).filter(User.email == user.email).first()
    if existing_user:
        raise HTTPException(
            status_code=status.HTTP_400_BAD_REQUEST,
            detail="A user with this email already exists."
        )
    
    hashed_password = pwd_context.hash(user.password)
    db_user = User(
        name=user.name,
        email=user.email,
        phone_number=user.phone_number,
        password=hashed_password,
        streak_count=0,
        longest_streak=0,
        tasks_completed=0
    )
    db.add(db_user)
    db.commit()
    db.refresh(db_user)
    return db_user

def get_user(db: Session, user_id: int):
    user = db.query(User).filter(User.id == user_id).first()
    if user is None:
        raise HTTPException(
            status_code=status.HTTP_404_NOT_FOUND,
            detail="User not found."
        )
    return user
