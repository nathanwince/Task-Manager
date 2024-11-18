# models/user.py
from sqlalchemy import Column, Integer, String, DateTime, func
from sqlalchemy.orm import relationship
from api.dependencies.database import Base

class User(Base):
    __tablename__ = "users"

    id = Column(Integer, primary_key=True, index=True)
    name = Column(String, unique=True, index=True)
    email = Column(String, unique=True, index=True)
    phone_number = Column(String(20), unique=True, nullable=True)
    password = Column(String(100), nullable=False)
    created_at = Column(DateTime, default=func.now())  
    streak_count = Column(Integer, default=0)  # Tracks current streak of consecutive days
    longest_streak = Column(Integer, default=0)  # Tracks longest streak achieved
    tasks_completed = Column(Integer, default=0)  # Tracks total completed tasks

    # Relationship with tasks
    tasks = relationship("Task", back_populates="user")

    # Method to reset the streak (if desired for manual or end-of-day check)
    def reset_streak(self):
        self.streak_count = 0

    # Method to update streak count and longest streak
    def update_streak(self, tasks_today):
        all_completed = all(task.completed for task in tasks_today)
        if all_completed:
            self.streak_count += 1
            if self.streak_count > self.longest_streak:
                self.longest_streak = self.streak_count
        else:
            self.reset_streak()
