import uvicorn
from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware
from api.routers import user_router, task_router, note_router, motivation_router, bookmark_router
from api.models.model_loader import load_models
from api.dependencies.config import conf


# Initialize FastAPI application
app = FastAPI()

# CORS settings - allow all origins for testing (adjust in production)
origins = ["*"]

app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],  # Allow all origins for testing (restrict in production)
    allow_credentials=True,
    allow_methods=["*"],  # Allow all HTTP methods
    allow_headers=["*"],  # Allow all headers
)

# Load models and create database tables
load_models()

# Include routers for user and task endpoints
app.include_router(user_router.router, prefix="/users", tags=["Users"])
app.include_router(task_router.router, prefix="/tasks", tags=["Tasks"])
app.include_router(note_router.router)
app.include_router(motivation_router.router)
app.include_router(bookmark_router.router)



# Run the application if this file is executed directly
if __name__ == "__main__":
    uvicorn.run(app, host=conf.app_host, port=conf.app_port)
