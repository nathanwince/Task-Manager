from fastapi import APIRouter, Depends, HTTPException, status
from sqlalchemy.orm import Session
from api.controllers import note as controller  # Import note controller functions
from api.schemas import note as schema
from api.dependencies.database import get_db

router = APIRouter(
    tags=['Notes'],
    prefix="/notes"
)

# Endpoint to create a new note
@router.post("/", response_model=schema.NoteOut, status_code=status.HTTP_201_CREATED)
def create_note(request: schema.NoteCreate, user_id: int, db: Session = Depends(get_db)):
    return controller.create_note(db=db, note_data=request, user_id=user_id)

# Endpoint to retrieve all notes for a specific user
@router.get("/{user_id}", response_model=list[schema.NoteOut])
def get_notes_for_user(user_id: int, db: Session = Depends(get_db)):
    return controller.get_notes_for_user(db=db, user_id=user_id)

# Endpoint to retrieve a specific note by note_id
@router.get("/{note_id}", response_model=schema.NoteOut)
def get_note(note_id: int, db: Session = Depends(get_db)):
    note = controller.get_note(db=db, note_id=note_id)
    if not note:
        raise HTTPException(status_code=status.HTTP_404_NOT_FOUND, detail="Note not found")
    return note

# Endpoint to update a specific note by note_id
@router.put("/{note_id}", response_model=schema.NoteOut)
def update_note(note_id: int, request: schema.NoteUpdate, db: Session = Depends(get_db)):
    note = controller.update_note(db=db, note_id=note_id, note_data=request)
    if not note:
        raise HTTPException(status_code=status.HTTP_404_NOT_FOUND, detail="Note not found")
    return note

# Endpoint to delete a specific note by note_id
@router.delete("/{note_id}", status_code=status.HTTP_204_NO_CONTENT)
def delete_note(note_id: int, db: Session = Depends(get_db)):
    if not controller.delete_note(db=db, note_id=note_id):
        raise HTTPException(status_code=status.HTTP_404_NOT_FOUND, detail="Note not found")
    return {"detail": "Note deleted successfully"}
