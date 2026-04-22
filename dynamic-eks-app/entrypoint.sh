#!/bin/sh

echo "Starting application..."
echo "SERVICE_NAME=$SERVICE_NAME"
echo "ENV=$ENV"
echo "CUSTOM_VALUE=$CUSTOM_VALUE"

exec uvicorn app.main:app --host 0.0.0.0 --port 8000
