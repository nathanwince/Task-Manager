from sqlalchemy import Column, Integer, String, Boolean, ForeignKey, DateTime
from sqlalchemy.orm import relationship
from sqlalchemy.sql import func  # To get the current timestamp
from api.dependencies.database import Base

class Task(Base):
    __tablename__ = "tasks"

    id = Column(Integer, primary_key=True, index=True)
    title = Column(String, index=True)
    description = Column(String)
    completed = Column(Boolean, default=False)  # Completion status of the task
    user_id = Column(Integer, ForeignKey("users.id"))  # Foreign key linking task to a user
    created_at = Column(DateTime, default=func.now())  # Creation timestamp
    due_date = Column(DateTime)

    # Relationship with user
    user = relationship("User", back_populates="tasks")
