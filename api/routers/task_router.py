from fastapi import APIRouter, Depends, HTTPException, status
from sqlalchemy.orm import Session
from api.controllers import task as controller  # Import task functions
from api.schemas import task as schema
from api.dependencies.database import get_db

router = APIRouter(
    tags=['Tasks'],
    prefix="/tasks"
)

@router.post("/", response_model=schema.TaskOut, status_code=status.HTTP_201_CREATED)
def create_task(request: schema.TaskCreate, user_id: int, db: Session = Depends(get_db)):
    return controller.create_task(db=db, task=request, user_id=user_id)

@router.get("/{user_id}", response_model=list[schema.TaskOut])
def get_user_tasks(user_id: int, db: Session = Depends(get_db)):
    return controller.get_tasks_for_user(db=db, user_id=user_id)

@router.get("/{task_id}", response_model=schema.TaskOut)
def get_task(task_id: int, db: Session = Depends(get_db)):
    task = controller.get_task(db=db, task_id=task_id)
    if not task:
        raise HTTPException(status_code=status.HTTP_404_NOT_FOUND, detail="Task not found")
    return task

@router.put("/{task_id}", response_model=schema.TaskOut)
def update_task(task_id: int, request: schema.TaskUpdate, db: Session = Depends(get_db)):
    task = controller.update_task(db=db, task_id=task_id, task_data=request)
    if not task:
        raise HTTPException(status_code=status.HTTP_404_NOT_FOUND, detail="Task not found")
    return task

@router.delete("/{task_id}", status_code=status.HTTP_204_NO_CONTENT)
def delete_task(task_id: int, db: Session = Depends(get_db)):
    if not controller.delete_task(db=db, task_id=task_id):
        raise HTTPException(status_code=status.HTTP_404_NOT_FOUND, detail="Task not found")
    return {"detail": "Task deleted successfully"}
