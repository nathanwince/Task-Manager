from pydantic import BaseModel
from typing import Optional
from datetime import datetime

class TaskBase(BaseModel):
    title: str
    description: Optional[str] = None

class TaskCreate(TaskBase):
    completed: bool = False  # Add the `completed` field with a default value
    due_date: Optional[datetime]
    priority: Optional[int] = 2  # Default priority


class TaskUpdate(BaseModel):
    title: Optional[str] = None
    description: Optional[str] = None
    completed: Optional[bool] = None
    due_date: Optional[datetime]
    priority: Optional[int] = None

class TaskOut(TaskBase):
    id: int
    completed: bool
    created_at: datetime
    due_date: Optional[datetime]  # Add the due_date field here
    priority: int
    user_id: int

    class Config:
        orm_mode = True