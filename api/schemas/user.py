# schemas/user.py
from pydantic import BaseModel, EmailStr
from typing import Optional
from datetime import datetime

class UserBase(BaseModel):
    name: str
    email: EmailStr
    phone_number: Optional[str] = None

class UserCreate(UserBase):
    password: str

class UserUpdate(BaseModel):
    name: Optional[str] = None
    email: Optional[EmailStr] = None
    phone_number: Optional[str] = None
    password: Optional[str] = None

# Schema for user login
class UserLogin(BaseModel):
    email: str
    password: str
    
class UserOut(BaseModel):
    id: int
    name: str
    email: EmailStr
    created_at: Optional[datetime]  # Optional if it’s sometimes missing
    streak_count: int
    longest_streak: int
    tasks_completed: int
    daily_tasks: int = 0  # Default if not part of the model or calculated
    completed_tasks_today: int = 0  # Default if not part of the model or calculated


class UserProgress(BaseModel):
    id: int
    name: str
    email: str
    created_at: datetime
    streak_count: int
    longest_streak: int
    tasks_completed: int
    daily_tasks: int
    remaining_tasks: int


    class Config:
        from_attributes = True  # Updated for Pydantic v2
