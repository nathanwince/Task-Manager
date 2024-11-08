# app/schemas/task.py
from pydantic import BaseModel
from datetime import date

class TaskBase(BaseModel):
    title: str
    description: str
    date: date

class TaskCreate(TaskBase):
    important: bool = False

class TaskUpdate(BaseModel):
    completed: bool

class TaskResponse(TaskBase):
    id: int
    completed: bool
    important: bool

    class Config:
        orm_mode = True
