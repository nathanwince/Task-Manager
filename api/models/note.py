from sqlalchemy import Column, Integer, String, DateTime, ForeignKey
from sqlalchemy.sql import func
from api.dependencies.database import Base

class Note(Base):
    __tablename__ = "notes"

    id = Column(Integer, primary_key=True, index=True)
    title = Column(String(100), nullable=False)  # Specify length as 100
    description = Column(String(255), nullable=True)  # Optional description with length 255
    user_id = Column(Integer, ForeignKey("users.id"))  # Link note to user
    created_at = Column(DateTime, default=func.now())  # Timestamp of note creation
