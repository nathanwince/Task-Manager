from sqlalchemy.orm import Session
from sqlalchemy import and_

def get_daily_tasks_for_user(db: Session, user_id: int):
    today = datetime.now().date()
    # Ensure only tasks due today and not completed are returned
    tasks = db.query(Task).filter(
        and_(
            Task.user_id == user_id,
            Task.due_date == today,
            Task.completed == False  # Exclude completed tasks
        )
    ).all()
    return tasks

from fastapi import HTTPException, status
from api.models.task import Task
from api.schemas.task import TaskCreate, TaskUpdate
from datetime import datetime, date


# Create a new task associated with a specific user
def create_task(db: Session, task: TaskCreate, user_id: int):
    db_task = Task(
        title=task.title,
        description=task.description,
        completed=task.completed if task.completed is not None else False,
        due_date=task.due_date,
        priority=task.priority if task.priority is not None else 2, 
        user_id=user_id
    )
    db.add(db_task)
    db.commit()
    db.refresh(db_task)
    return db_task

# Retrieve all tasks for a specific user by user_id
def get_tasks_for_user(db: Session, user_id: int):
    return db.query(Task).filter(Task.user_id == user_id).order_by(Task.priority).all()

# Retrieve a specific task by task_id
def get_task(db: Session, task_id: int):
    task = db.query(Task).filter(Task.id == task_id).first()
    if not task:
        raise HTTPException(status_code=status.HTTP_404_NOT_FOUND, detail="Task not found.")
    return task

# Update a specific task by task_id with new data
def update_task(db: Session, task_id: int, task_data: TaskUpdate):
    task = db.query(Task).filter(Task.id == task_id).first()
    if not task:
        raise HTTPException(status_code=status.HTTP_404_NOT_FOUND, detail="Task not found.")
    for key, value in task_data.dict(exclude_unset=True).items():
        setattr(task, key, value)
    db.commit()
    db.refresh(task)
    return task

# Mark a specific task as complete by setting its 'completed' status to True
def mark_task_complete(db: Session, task_id: int):
    task = db.query(Task).filter(Task.id == task_id).first()
    if not task:
        raise HTTPException(status_code=status.HTTP_404_NOT_FOUND, detail="Task not found.")
    task.completed = True
    db.commit()  # Save the change to the database
    db.refresh(task)
    return task


# Delete a specific task by task_id
def delete_task(db: Session, task_id: int):
    task = db.query(Task).filter(Task.id == task_id).first()
    if not task:
        raise HTTPException(status_code=status.HTTP_404_NOT_FOUND, detail="Task not found.")
    db.delete(task)
    db.commit()
    return {"detail": "Task deleted successfully"}

# Retrieve tasks for the current day for a specific user, excluding completed tasks
def get_daily_tasks_for_user(db: Session, user_id: int):
    today = datetime.now().date()
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

# Retrieve tasks within a specific date range for a specific user, for calendar view
def get_tasks_by_date_range(db: Session, user_id: int, start_date: date, end_date: date):
    return db.query(Task).filter(
        Task.user_id == user_id,
        Task.due_date >= start_date,
        Task.due_date <= end_date
    ).order_by(Task.priority).all()
