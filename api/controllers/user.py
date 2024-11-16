# controllers/user.py
from sqlalchemy.orm import Session
from datetime import date
from fastapi import HTTPException 
from api.models.user import User
from api.models.task import Task

def get_user_progress(db: Session, user_id: int):
    today = date.today()

    # Fetch tasks for today
    tasks_today = db.query(Task).filter(Task.user_id == user_id, Task.due_date == today).all()
    total_tasks = len(tasks_today)
    completed_tasks_today = sum(task.completed for task in tasks_today)

    # Calculate remaining tasks
    remaining_tasks = total_tasks - completed_tasks_today

    # Fetch user streak info (you may need to store this in a `User` table or similar)
    user = db.query(User).filter(User.id == user_id).first()
    if not user:
        raise HTTPException(status_code=404, detail="User not found")

    # Check if the user completed all tasks today
    if total_tasks > 0 and completed_tasks_today == total_tasks:
        # User completed all tasks for today, increment the streak count
        user.streak_count += 1
        user.longest_streak = max(user.longest_streak, user.streak_count)
    else:
        # Reset streak if no tasks were completed today
        if completed_tasks_today == 0:
            user.streak_count = 0

    db.commit()  # Save any changes to the streak count

    # Return progress data
    return {
        "id": user.id,
        "name": user.name,
        "email": user.email,
        "created_at": user.created_at,
        "streak_count": user.streak_count,
        "longest_streak": user.longest_streak,
        "tasks_completed": completed_tasks_today,
        "daily_tasks": total_tasks,
        "remaining_tasks": remaining_tasks
    }