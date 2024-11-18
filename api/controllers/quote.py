from sqlalchemy.orm import Session
from api.models.quote import Quote
from sqlalchemy.sql.expression import func

def get_random_quote(db: Session):
    return db.query(Quote).order_by(func.rand()).first()
