FROM python:3.11-slim

# Create non-root user
RUN useradd -m appuser

WORKDIR /app

# Copy app code
COPY app/ app/
COPY app/requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy entrypoint
COPY entrypoint.sh .
RUN chmod +x entrypoint.sh

# Switch to non-root user
USER appuser

ENTRYPOINT ["./entrypoint.sh"]
