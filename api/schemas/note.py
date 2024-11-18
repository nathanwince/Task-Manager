from pydantic import BaseModel
from datetime import datetime
from typing import Optional

class NoteBase(BaseModel):
    title: str
    description: Optional[str] = None  # Optional field for the description

class NoteCreate(NoteBase):
    pass  # Inherits title and description from NoteBase

class NoteUpdate(BaseModel):
    title: Optional[str] = None
    description: Optional[str] = None  # Allow partial updates

class NoteOut(NoteBase):
    id: int
    created_at: datetime
    user_id: int

    class Config:
        orm_mode = True
