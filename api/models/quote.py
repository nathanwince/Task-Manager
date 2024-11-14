from sqlalchemy import Column, Integer, String
from api.dependencies.database import Base

class Quote(Base):
    __tablename__ = "quotes"

    id = Column(Integer, primary_key=True, index=True)
    text = Column(String(255), nullable=False)
    author = Column(String(100), default="Unknown")
