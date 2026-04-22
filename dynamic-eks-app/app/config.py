import os

SERVICE_NAME = os.getenv("SERVICE_NAME", "default-service")
ENV = os.getenv("ENV", "dev")
CUSTOM_VALUE = os.getenv("CUSTOM_VALUE", "none")
