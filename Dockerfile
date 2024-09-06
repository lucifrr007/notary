# Use a minimal base image with Python
FROM python:3.11-alpine

# Set the working directory
WORKDIR /app

# Install Python dependencies directly
RUN pip install --no-cache-dir flask==2.1.1 requests==2.26.0

# Copy the application code
COPY . .

# Expose the port the app runs on
EXPOSE 5000

# Command to run the application
CMD ["python", "app.py"]
