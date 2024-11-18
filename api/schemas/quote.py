from pydantic import BaseModel

class QuoteOut(BaseModel):
    id: int
    text: str
    author: str

    class Config:
        orm_mode = True
