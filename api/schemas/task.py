from pydantic import BaseModel
from typing import Optional
from datetime import datetime

# Base schema for shared fields
class TaskBase(BaseModel):
    title: str
    description: Optional[str] = None

# Schema for creating a task (input)
class TaskCreate(TaskBase):
    completed: bool = False
    due_date: Optional[datetime]
    priority: Optional[int] = 2


# Schema for updating a task (input)
class TaskUpdate(BaseModel):
    title: Optional[str] = None
    description: Optional[str] = None
    completed: Optional[bool] = None
    due_date: Optional[datetime] = None
    priority: Optional[int] = None

# Schema for returning tasks (output)
class TaskOut(TaskBase):
    id: int
    completed: bool
    created_at: datetime
    due_date: Optional[datetime] = None
    priority: int
    user_id: int

    class Config:
        orm_mode = True

# Schema for creating a task with user_id included (input)
class TaskCreateWithUserId(BaseModel):
    user_id: int
    title: str
    description: str
    completed: Optional[bool] = False
    due_date: Optional[datetime]
    priority: Optional[int] = 2

    class Config:
        orm_mode = True
