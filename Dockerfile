# Use the official Python image as the base
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy all application files
COPY . .

RUN pip install --no-cache-dir numpy==1.24.2
RUN pip install --no-cache-dir -r requirements.txt


# Expose the port your Flask app runs on
EXPOSE 5000

# Command to run the Flask application
CMD ["python", "app.py"]
