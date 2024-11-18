from sqlalchemy import Column, Integer, ForeignKey, DateTime, CheckConstraint
from sqlalchemy.sql import func
from api.dependencies.database import Base

class Bookmark(Base):
    __tablename__ = "bookmarks"

    id = Column(Integer, primary_key=True, index=True)
    user_id = Column(Integer, ForeignKey("users.id"), nullable=False)
    task_id = Column(Integer, ForeignKey("tasks.id"), nullable=True)
    quote_id = Column(Integer, ForeignKey("quotes.id"), nullable=True)
    created_at = Column(DateTime, default=func.now())
    
    __table_args__ = (
        CheckConstraint(
            "(task_id IS NOT NULL OR quote_id IS NOT NULL)",
            name="task_or_quote_required"
        ),
    )
