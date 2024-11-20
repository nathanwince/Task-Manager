from sqlalchemy.orm import Session
from fastapi import HTTPException, status
from api.models.user import User
from api.schemas.user import UserCreate
from passlib.context import CryptContext

pwd_context = CryptContext(schemes=["bcrypt"], deprecated="auto")

def create_user(db: Session, user: UserCreate):
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
        tasks_completed=0,
    )
    db.add(db_user)
    db.commit()
    db.refresh(db_user)
    return db_user



def validate_user_credentials(db: Session, email: str, password: str):
    db_user = db.query(User).filter(User.email == email).first()

    if not db_user:
        raise HTTPException(status_code=status.HTTP_404_NOT_FOUND, detail="User not found")

    if not pwd_context.verify(password, db_user.password):
        raise HTTPException(status_code=status.HTTP_401_UNAUTHORIZED, detail="Invalid credentials")

    return db_user

def authenticate_user(db: Session, email_or_phone: str, password: str):
    db_user = db.query(User).filter(
        (User.email == email_or_phone) | (User.phone_number == email_or_phone)
    ).first()

    if not db_user:
        print(f"No user found with email/phone: {email_or_phone}")
        raise HTTPException(status_code=404, detail="User not found")

    print(f"Found user: {db_user}")
    print(f"Input password: {password}")
    print(f"Stored hashed password: {db_user.password}")

    if not pwd_context.verify(password, db_user.password):
        print("Password verification failed")
        raise HTTPException(status_code=401, detail="Invalid credentials")

    print("Password verification succeeded")
    return db_user

def get_user(db: Session, user_id: int):
    """
    Retrieve a user by their ID.
    """
    user = db.query(User).filter(User.id == user_id).first()
    if not user:
        raise HTTPException(status_code=404, detail="User not found")
    return user
