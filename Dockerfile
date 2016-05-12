# Dockerfile
# Start from a base image
FROM python:2.7-alpine
# Install empirical library
RUN pip install zerorpc
RUN wget https://raw.githubusercontent.com/empiricalci/empirical.py/master/empirical.py
# Add reserach code
COPY . /code
# Set entrypoint
ENTRYPOINT ["python", "/code/casino.py"]
