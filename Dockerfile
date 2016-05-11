# Dockerfile
# Start from a base image
FROM python:1.7-alpine
# Install empirical library
RUN pip install empirical
# Add reserach code
COPY . /code
# Set entrypoint
ENTRYPOINT ["python", "/code/casino.py"]
