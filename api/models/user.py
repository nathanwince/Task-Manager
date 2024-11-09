from sqlalchemy import Column, Integer, String, DateTime, func
from sqlalchemy.orm import relationship
from ..dependencies.database import Base

class User(Base):
    __tablename__ = "users"

    id = Column(Integer, primary_key=True, index=True)
    name = Column(String(50), nullable=False)
    email = Column(String(50), unique=True, index=True, nullable=False)
    phone_number = Column(String(20), unique=True, nullable=True)
    password = Column(String(100), nullable=False)
    created_at = Column(DateTime, default=func.now())

    # Relationship with tasks
    tasks = relationship("Task", back_populates="user")
