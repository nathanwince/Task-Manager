# controllers/user.py
from sqlalchemy.orm import Session
from datetime import date
from api.models.user import User
from api.models.task import Task

def get_user_progress(db: Session, user_id: int):
    user = db.query(User).get(user_id)
    today = date.today()

    # Get today's tasks
    tasks_today = db.query(Task).filter(Task.user_id == user_id, Task.date == today).all()
    total_tasks_today = len(tasks_today)
    completed_tasks_today = sum(task.completed for task in tasks_today)

    # Update streak if all tasks for today are completed
    if total_tasks_today > 0 and completed_tasks_today == total_tasks_today:
        user.streak_count += 1
        user.longest_streak = max(user.longest_streak, user.streak_count)
    else:
        user.streak_count = 0

    db.commit()
    
    return {
        "streak_count": user.streak_count,
        "longest_streak": user.longest_streak,
        "daily_tasks": total_tasks_today,
        "completed_tasks_today": completed_tasks_today
    }
