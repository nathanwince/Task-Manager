from sqlalchemy.orm import Session
from sqlalchemy import and_
from fastapi import HTTPException, status
from api.models.task import Task
from api.schemas.task import TaskCreateWithUserId, TaskUpdate  # Correct import
from datetime import datetime, date


# Create a new task associated with a specific user
def create_task(db: Session, task: TaskCreateWithUserId):  # Use the correct schema reference
    db_task = Task(
        title=task.title,
        description=task.description,
        completed=task.completed if task.completed is not None else False,
        due_date=task.due_date,
        priority=task.priority if task.priority is not None else 2,
        user_id=task.user_id  # Extracted from the request body
    )
    db.add(db_task)
    db.commit()
    db.refresh(db_task)
    return db_task

# Retrieve all tasks for a specific user by user_id
def get_tasks_for_user(db: Session, user_id: int):
    """
    Retrieve all tasks for a user, ordered by priority.
    """
    try:
        tasks = db.query(Task).filter(Task.user_id == user_id).order_by(Task.priority).all()
        return tasks
    except Exception as e:
        print(f"Error in get_tasks_for_user: {e}")
        raise HTTPException(status_code=status.HTTP_500_INTERNAL_SERVER_ERROR, detail="Failed to fetch tasks for user")


# Retrieve a specific task by task_id
def get_task(db: Session, task_id: int):
    """
    Retrieve a specific task by its ID.
    """
    task = db.query(Task).filter(Task.id == task_id).first()
    if not task:
        raise HTTPException(status_code=status.HTTP_404_NOT_FOUND, detail="Task not found.")
    return task


# Update a specific task by task_id with new data
def update_task(db: Session, task_id: int, task_data: TaskUpdate):
    """
    Update a task's details using provided TaskUpdate schema.
    """
    task = db.query(Task).filter(Task.id == task_id).first()
    if not task:
        raise HTTPException(status_code=status.HTTP_404_NOT_FOUND, detail="Task not found.")
    try:
        for key, value in task_data.dict(exclude_unset=True).items():
            setattr(task, key, value)
        db.commit()
        db.refresh(task)
        return task
    except Exception as e:
        print(f"Error in update_task: {e}")
        raise HTTPException(status_code=status.HTTP_500_INTERNAL_SERVER_ERROR, detail="Failed to update task")


# Mark a specific task as complete by setting its 'completed' status to True
def mark_task_complete(db: Session, task_id: int):
    """
    Mark a task as completed.
    """
    task = db.query(Task).filter(Task.id == task_id).first()
    if not task:
        raise HTTPException(status_code=status.HTTP_404_NOT_FOUND, detail="Task not found.")
    try:
        task.completed = True
        db.commit()
        db.refresh(task)
        return task
    except Exception as e:
        print(f"Error in mark_task_complete: {e}")
        raise HTTPException(status_code=status.HTTP_500_INTERNAL_SERVER_ERROR, detail="Failed to mark task as complete")


# Delete a specific task by task_id
def delete_task(db: Session, task_id: int):
    """
    Delete a task by its ID.
    """
    task = db.query(Task).filter(Task.id == task_id).first()
    if not task:
        raise HTTPException(status_code=status.HTTP_404_NOT_FOUND, detail="Task not found.")
    try:
        db.delete(task)
        db.commit()
        return {"detail": "Task deleted successfully"}
    except Exception as e:
        print(f"Error in delete_task: {e}")
        raise HTTPException(status_code=status.HTTP_500_INTERNAL_SERVER_ERROR, detail="Failed to delete task")


# Retrieve tasks for the current day for a specific user, excluding completed tasks
def get_daily_tasks_for_user(db: Session, user_id: int):
    """
    Retrieve tasks for the current day.
    """
    today = datetime.now().date()
    try:
        query = db.query(Task).filter(
            and_(
                Task.user_id == user_id,
                Task.due_date == today,
                Task.completed == False  # Exclude completed tasks
            )
        )
        print("Generated SQL Query:", str(query))  # Debugging
        tasks = query.all()
        return tasks
    except Exception as e:
        print(f"Error in get_daily_tasks_for_user: {e}")
        raise HTTPException(status_code=status.HTTP_500_INTERNAL_SERVER_ERROR, detail="Failed to fetch daily tasks")


# Retrieve tasks within a specific date range for a specific user, for calendar view
def get_tasks_by_date_range(db: Session, user_id: int, start_date: date, end_date: date):
    """
    Retrieve tasks for a specific date range for the calendar view.
    """
    try:
        tasks = db.query(Task).filter(
            Task.user_id == user_id,
            Task.due_date >= start_date,
            Task.due_date <= end_date
        ).order_by(Task.priority).all()
        return tasks
    except Exception as e:
        print(f"Error in get_tasks_by_date_range: {e}")
        raise HTTPException(status_code=status.HTTP_500_INTERNAL_SERVER_ERROR, detail="Failed to fetch tasks for calendar")
