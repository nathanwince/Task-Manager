from sqlalchemy.orm import Session
from api.models.quote import Quote
from datetime import datetime
from sqlalchemy.sql.expression import func

# Function to get a quote for the current day
def get_daily_quote(db: Session):
    # Use the current date as a reference for deterministic behavior
    today_date = datetime.now().date()

    # Get the count of all quotes
    total_quotes = db.query(Quote).count()

    if total_quotes == 0:
        return None  # Return None if no quotes are in the database

    # Determine the "quote of the day" by cycling through based on date
    quote_index = today_date.toordinal() % total_quotes

    # Fetch the quote at the calculated index
    daily_quote = (
        db.query(Quote)
        .order_by(Quote.id)  # Ensure consistent ordering
        .offset(quote_index)
        .first()
    )

    return daily_quote

# Optional: Function to get a truly random quote
def get_random_quote(db: Session):
    return db.query(Quote).order_by(func.rand()).first()
