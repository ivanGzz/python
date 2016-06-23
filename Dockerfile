# Dockerfile
# Start from a base image
FROM python:2.7-alpine
# Install empirical library
RUN apk add --update build-base
RUN pip install empiricalci
# Add reserach code
COPY . /code
# Set entrypoint
ENTRYPOINT ["python", "/code/casino.py"]
