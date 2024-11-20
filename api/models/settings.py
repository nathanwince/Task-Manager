from sqlalchemy import Column, Integer
from api.dependencies.database import Base

class Settings(Base):
    __tablename__ = "settings"
    id = Column(Integer, primary_key=True, index=True)
    last_shown_quote_id = Column(Integer, default=None)
