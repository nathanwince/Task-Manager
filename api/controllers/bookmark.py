from sqlalchemy.orm import Session
from api.models.bookmark import Bookmark
from fastapi import HTTPException, status

def create_bookmark(db: Session, user_id: int, task_id: int = None, quote_id: int = None):
    print(f"Creating bookmark: user_id={user_id}, task_id={task_id}, quote_id={quote_id}")
    if not task_id and not quote_id:
        raise HTTPException(
            status_code=status.HTTP_400_BAD_REQUEST, 
            detail="Must provide a task_id or quote_id to bookmark."
        )
    bookmark = Bookmark(user_id=user_id, task_id=task_id, quote_id=quote_id)
    db.add(bookmark)
    db.commit()
    db.refresh(bookmark)
    return bookmark



def get_user_bookmarks(db: Session, user_id: int):
    return db.query(Bookmark).filter(Bookmark.user_id == user_id).all()

def delete_bookmark(db: Session, bookmark_id: int):
    bookmark = db.query(Bookmark).filter(Bookmark.id == bookmark_id).first()
    if not bookmark:
        raise HTTPException(status_code=status.HTTP_404_NOT_FOUND, detail="Bookmark not found")
    db.delete(bookmark)
    db.commit()
    return {"detail": "Bookmark deleted successfully"}
