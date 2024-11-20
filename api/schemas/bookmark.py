from pydantic import BaseModel
from typing import Optional
from datetime import datetime

# Base schema for common bookmark fields
class BookmarkBase(BaseModel):
    task_id: Optional[int] = None  # Optional task_id
    quote_id: Optional[int] = None  # Optional quote_id

# Schema for creating a bookmark (includes user_id in the request body)
class BookmarkCreate(BookmarkBase):
    user_id: int  # user_id is now required in the request body

# Schema for returning a bookmark in API responses
class BookmarkOut(BookmarkBase):
    id: int  # ID of the bookmark
    user_id: int  # ID of the user who created the bookmark
    created_at: datetime  # Timestamp when the bookmark was created

    # ORM configuration for SQLAlchemy compatibility
    class Config:
        orm_mode = True
