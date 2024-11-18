from pydantic import BaseModel
from typing import Optional
from datetime import datetime

class BookmarkBase(BaseModel):
    task_id: Optional[int] = None
    quote_id: Optional[int] = None

class BookmarkCreate(BookmarkBase):
    pass

class BookmarkOut(BookmarkBase):
    id: int
    user_id: int
    created_at: datetime

    class Config:
        orm_mode = True
