from fastapi import APIRouter, Depends, HTTPException, status
from sqlalchemy.orm import Session
from api.dependencies.database import get_db
from api.schemas.bookmark import BookmarkCreate, BookmarkOut
from api.controllers import bookmark as controller

router = APIRouter(
    tags=['Bookmarks'],
    prefix="/bookmarks"
)

@router.post("/", response_model=BookmarkOut, status_code=status.HTTP_201_CREATED)
def create_bookmark(request: BookmarkCreate, user_id: int, db: Session = Depends(get_db)):
    return controller.create_bookmark(db=db, user_id=user_id, task_id=request.task_id, quote_id=request.quote_id)

@router.get("/{user_id}", response_model=list[BookmarkOut])
def get_user_bookmarks(user_id: int, db: Session = Depends(get_db)):
    return controller.get_user_bookmarks(db=db, user_id=user_id)

@router.delete("/{bookmark_id}", status_code=status.HTTP_204_NO_CONTENT)
def delete_bookmark(bookmark_id: int, db: Session = Depends(get_db)):
    return controller.delete_bookmark(db=db, bookmark_id=bookmark_id)
