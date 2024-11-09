import uvicorn
from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware
from api.routers import user_router, task_router  # Adjusted import with `api` prefix
from api.models.model_loader import load_models
from api.dependencies.config import conf


# Initialize FastAPI application
app = FastAPI()

# CORS settings - allow all origins for testing (adjust in production)
origins = ["*"]

app.add_middleware(
    CORSMiddleware,
    allow_origins=origins,
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

# Load models and create database tables
load_models()

# Include routers for user and task endpoints
app.include_router(user_router.router, prefix="/users", tags=["Users"])
app.include_router(task_router.router, prefix="/tasks", tags=["Tasks"])

# Run the application if this file is executed directly
if __name__ == "__main__":
    uvicorn.run(app, host=conf.app_host, port=conf.app_port)
