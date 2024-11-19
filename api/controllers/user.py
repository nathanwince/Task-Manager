# controllers/user.py
from sqlalchemy.orm import Session
from sqlalchemy.sql.expression import cast
from sqlalchemy.types import Date
from datetime import date
from fastapi import HTTPException
from api.models.user import User
from api.models.task import Task

def get_user_progress(db: Session, user_id: int):
    """
    Retrieve user's progress including tasks and streak information.
    """
    today = date.today()

    # Fetch tasks for today
    tasks_today = db.query(Task).filter(Task.user_id == user_id, cast(Task.due_date, Date) == today).all()
    total_tasks = len(tasks_today)
    completed_tasks_today = sum(task.completed for task in tasks_today)

    # Calculate remaining tasks
    remaining_tasks = total_tasks - completed_tasks_today

    # Fetch user streak information
    user = db.query(User).filter(User.id == user_id).first()
    if not user:
        raise HTTPException(status_code=404, detail="User not found")

    # Update streak count
    if total_tasks > 0 and completed_tasks_today == total_tasks:
        # User completed all tasks for today, increment the streak count
        user.streak_count += 1
        user.longest_streak = max(user.longest_streak, user.streak_count)
    elif completed_tasks_today == 0:
        # Reset streak if no tasks were completed today
        user.streak_count = 0

    # Commit updates
    try:
        db.commit()
    except Exception as e:
        db.rollback()
        raise HTTPException(status_code=500, detail=f"Database commit error: {str(e)}")

    # Log for debugging
    print(f"User Progress - User ID: {user_id}, Total Tasks: {total_tasks}, "
          f"Completed: {completed_tasks_today}, Remaining: {remaining_tasks}, "
          f"Streak: {user.streak_count}, Longest Streak: {user.longest_streak}")

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
