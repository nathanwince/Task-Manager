from sqlalchemy.orm import Session
from api.models.user import User
from api.schemas.user import UserCreate, UserUpdate
from fastapi import HTTPException, status
from passlib.context import CryptContext

# Initialize password hashing
pwd_context = CryptContext(schemes=["bcrypt"], deprecated="auto")

def hash_password(password: str) -> str:
    return pwd_context.hash(password)

def verify_password(plain_password: str, hashed_password: str) -> bool:
    return pwd_context.verify(plain_password, hashed_password)

def create_user(db: Session, user: UserCreate):
    hashed_password = hash_password(user.password)
    db_user = User(
        name=user.name,
        email=user.email,
        phone_number=user.phone_number,
        password=hashed_password
    )
    db.add(db_user)
    db.commit()
    db.refresh(db_user)
    return db_user

def get_user(db: Session, user_id: int):
    return db.query(User).filter(User.id == user_id).first()

def update_user(db: Session, user_id: int, request: UserUpdate):
    user = get_user(db, user_id)
    if not user:
        return None
    
    if request.name:
        user.name = request.name
    if request.email:
        user.email = request.email
    if request.phone_number:
        user.phone_number = request.phone_number
    if request.password:
        user.password = hash_password(request.password)
    
    db.commit()
    db.refresh(user)
    return user

def delete_user(db: Session, user_id: int):
    user = get_user(db, user_id)
    if not user:
        return None
    db.delete(user)
    db.commit()
    return True
