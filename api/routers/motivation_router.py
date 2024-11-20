from fastapi import APIRouter, Depends, HTTPException
from sqlalchemy.orm import Session
from api.dependencies.database import get_db
from api.controllers import quote as controller
from api.schemas.quote import QuoteOut

router = APIRouter(
    tags=['Motivation'],
    prefix="/motivation"
)

@router.get("/daily", response_model=QuoteOut)
def get_daily_motivation(db: Session = Depends(get_db)):
    daily_quote = controller.get_daily_quote(db)
    if not daily_quote:
        raise HTTPException(status_code=404, detail="No quotes available.")
    return {
        "id": daily_quote.id,
        "text": daily_quote.text,
        "author": daily_quote.author,
    }
