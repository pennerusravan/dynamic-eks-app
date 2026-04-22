#!/bin/sh

echo "Starting app..."
echo "$SERVICE_NAME $ENV $CUSTOM_VALUE"

exec uvicorn app.main:app --host 0.0.0.0 --port 8000
