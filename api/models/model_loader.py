import os
import importlib
from api.dependencies.database import Base, engine

def load_models():
    """
    Dynamically imports all models in the 'api.models' directory to ensure they are
    registered with SQLAlchemy's Base.metadata.
    """
    model_dir = os.path.dirname(__file__)  # Current directory of model_loader.py
    for filename in os.listdir(model_dir):
        if filename.endswith(".py") and filename != "model_loader.py" and filename != "__init__.py":
            module_name = f"api.models.{filename[:-3]}"  # Full path to module without .py extension
            importlib.import_module(module_name)

    # Create all tables in the database based on models
    Base.metadata.create_all(bind=engine)

# Run this function to load models
load_models()
