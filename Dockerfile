# Use an official Python image
FROM python:3.11-slim

# Set working directory
WORKDIR .

# Copy requirements and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy application code
COPY . .

# Expose the default port used by DigitalOcean App Platform
EXPOSE 8080

# Command to run the FastAPI app
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8080"]