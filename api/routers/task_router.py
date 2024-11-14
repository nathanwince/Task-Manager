from datetime import date
from typing import List, Optional
from fastapi import APIRouter, Depends, HTTPException, status
from sqlalchemy.orm import Session
from api.controllers import task as controller  # Import task functions
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
@router.get("/{user_id}", response_model=list[schema.TaskOut])
def get_user_tasks(user_id: int, db: Session = Depends(get_db)):
    return controller.get_tasks_for_user(db=db, user_id=user_id)

# Retrieve a specific task by task_id
@router.get("/{task_id}", response_model=schema.TaskOut)
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

@router.get("/calendar", response_model=List[schema.TaskOut])
def get_tasks_for_calendar(
    start_date: date,
    end_date: date,
    user_id: int,
    db: Session = Depends(get_db)
):
    # Fetch tasks that have a due_date within the specified date range
    tasks = controller.get_tasks_by_date_range(db=db, user_id=user_id, start_date=start_date, end_date=end_date)
    return tasks