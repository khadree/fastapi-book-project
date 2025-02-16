# Use a lightweight official Python image
FROM python:3.12-slim

# Set the working directory
WORKDIR /app

# Copy the application files
COPY . /app

# Install dependencies
RUN pip install --no-cache-dir --upgrade pip && \
    pip install -r requirements.txt

# Expose the FastAPI port
EXPOSE 8000

# Run the FastAPI application
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
