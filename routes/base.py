from fastapi import FastAPI, APIRouter, HTTPException
import os


base_router = APIRouter()
@base_router.get("/")
async def welcome():
  app_name= os.getenv("APP_NAME", "FastAPI Application")
  app_version = os.getenv("APP_VERSION", "1.0.0")
  return {"app_name": app_name, "app_version": app_version, "message": "Welcome to the Mini RAG App!"}  