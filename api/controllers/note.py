from sqlalchemy.orm import Session
from fastapi import HTTPException, status  # Import HTTPException and status
from api.models.note import Note
from api.schemas.note import NoteCreate, NoteUpdate

def create_note(db: Session, note_data: NoteCreate, user_id: int):
    db_note = Note(
        title=note_data.title,
        description=note_data.description,
        user_id=user_id
    )
    db.add(db_note)
    db.commit()
    db.refresh(db_note)
    return db_note

def update_note(db: Session, note_id: int, note_data: NoteUpdate):
    note = db.query(Note).filter(Note.id == note_id).first()
    if not note:
        raise HTTPException(status_code=status.HTTP_404_NOT_FOUND, detail="Note not found.")
    for key, value in note_data.dict(exclude_unset=True).items():
        setattr(note, key, value)
    db.commit()
    db.refresh(note)
    return note

def get_notes_for_user(db: Session, user_id: int):
    notes = db.query(Note).filter(Note.user_id == user_id).all()
    if not notes:
        raise HTTPException(status_code=status.HTTP_404_NOT_FOUND, detail="No notes found for this user.")
    return notes
