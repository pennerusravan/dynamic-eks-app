from fastapi import FastAPI
import os

app = FastAPI()

@app.get("/health")
def health():
    return {"status": "ok"}

@app.get("/")
def root():
    return {
        "SERVICE_NAME": os.getenv("SERVICE_NAME"),
        "ENV": os.getenv("ENV"),
        "CUSTOM_VALUE": os.getenv("CUSTOM_VALUE")
    }
