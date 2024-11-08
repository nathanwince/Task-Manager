# app/models/task.py
from sqlalchemy import Column, Integer, String, Date, ForeignKey, Boolean
from sqlalchemy.orm import relationship
from app.database import Base

class Task(Base):
    __tablename__ = "tasks"

    id = Column(Integer, primary_key=True, index=True)
    title = Column(String, index=True)
    description = Column(String)
    date = Column(Date)
    completed = Column(Boolean, default=False)
    important = Column(Boolean, default=False)
    user_id = Column(Integer, ForeignKey("users.id"))

    # Reference 'User' by string name
    user = relationship("User", back_populates="tasks")
