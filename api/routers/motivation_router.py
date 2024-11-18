from fastapi import APIRouter, Depends
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
    return controller.get_random_quote(db)
