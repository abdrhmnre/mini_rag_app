from fastapi import FastAPI
from routes import base

from dotenv import load_dotenv
load_dotenv(".env")
app = FastAPI(
    prefix="/api",
    title="My FastAPI Application", tags=['api_v1'], description="This is a sample FastAPI application."
)
app.include_router(base.base_router)

