from datetime import date
from typing import List
from fastapi import APIRouter, Depends, HTTPException, status
from sqlalchemy.orm import Session
from api.controllers import task as controller
from api.schemas import task as schema
from api.dependencies.database import get_db

router = APIRouter(
    tags=['Tasks'],
    prefix="/tasks"
)

# Create a new task associated with a specific user
@router.post("/", response_model=schema.TaskOut, status_code=status.HTTP_201_CREATED)
def create_task(request: schema.TaskCreate, user_id: int, db: Session = Depends(get_db)):
    return controller.create_task(db=db, task=request, user_id=user_id)

# Retrieve all tasks for a specific user by user_id
@router.get("/user/{user_id}", response_model=List[schema.TaskOut])
def get_user_tasks(user_id: int, db: Session = Depends(get_db)):
    return controller.get_tasks_for_user(db=db, user_id=user_id)

# Retrieve tasks due today for a specific user
@router.get("/today/{user_id}", response_model=List[schema.TaskOut])
def get_tasks_for_today(user_id: int, db: Session = Depends(get_db)):
    from sqlalchemy import cast, Date
    today = date.today()  # Current date
    tasks = (
        db.query(controller.Task)
        .filter(
            controller.Task.user_id == user_id,
            cast(controller.Task.due_date, Date) == today,  # Compare only the date part
            controller.Task.completed == False  # Exclude completed tasks
        )
        .all()
    )
    return tasks


# Retrieve a specific task by task_id
@router.get("/task/{task_id}", response_model=schema.TaskOut)
def get_task(task_id: int, db: Session = Depends(get_db)):
    task = controller.get_task(db=db, task_id=task_id)
    if not task:
        raise HTTPException(status_code=status.HTTP_404_NOT_FOUND, detail="Task not found")
    return task

# Update a specific task by task_id with new data
@router.put("/{task_id}", response_model=schema.TaskOut)
def update_task(task_id: int, request: schema.TaskUpdate, db: Session = Depends(get_db)):
    task = controller.update_task(db=db, task_id=task_id, task_data=request)
    if not task:
        raise HTTPException(status_code=status.HTTP_404_NOT_FOUND, detail="Task not found")
    return task

# Delete a specific task by task_id
@router.delete("/{task_id}", status_code=status.HTTP_204_NO_CONTENT)
def delete_task(task_id: int, db: Session = Depends(get_db)):
    if not controller.delete_task(db=db, task_id=task_id):
        raise HTTPException(status_code=status.HTTP_404_NOT_FOUND, detail="Task not found")
    return {"detail": "Task deleted successfully"}

# Mark a specific task as complete by setting its 'completed' status to True
@router.put("/tasks/{task_id}/complete", response_model=schema.TaskOut)
def mark_task_complete(task_id: int, db: Session = Depends(get_db)):
    task = controller.mark_task_complete(db=db, task_id=task_id)
    if not task:
        raise HTTPException(status_code=status.HTTP_404_NOT_FOUND, detail="Task not found")
    return task

# Retrieve tasks for a calendar view by date range
@router.get("/calendar", response_model=List[schema.TaskOut])
def get_tasks_for_calendar(
    start_date: str, 
    end_date: str,
    user_id: int,
    db: Session = Depends(get_db)
):
    from datetime import datetime
    try:
        start_date = datetime.strptime(start_date, "%Y-%m-%d").date()
        end_date = datetime.strptime(end_date, "%Y-%m-%d").date()
    except ValueError:
        raise HTTPException(status_code=400, detail="Invalid date format. Use YYYY-MM-DD.")

    tasks = controller.get_tasks_by_date_range(db=db, user_id=user_id, start_date=start_date, end_date=end_date)
    return tasks

