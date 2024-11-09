from sqlalchemy.orm import Session
from api.models.task import Task
from api.schemas.task import TaskCreate, TaskUpdate

def create_task(db: Session, task: TaskCreate, user_id: int):
    db_task = Task(title=task.title, description=task.description, user_id=user_id)
    db.add(db_task)
    db.commit()
    db.refresh(db_task)
    return db_task

def get_tasks_for_user(db: Session, user_id: int):
    return db.query(Task).filter(Task.user_id == user_id).all()

def mark_task_complete(db: Session, task_id: int):
    task = db.query(Task).filter(Task.id == task_id).first()
    if task:
        task.completed = True
        db.commit()
    return task

def delete_task(db: Session, task_id: int):
    task = db.query(Task).filter(Task.id == task_id).first()
    if task:
        db.delete(task)
        db.commit()
        return True
    return False
