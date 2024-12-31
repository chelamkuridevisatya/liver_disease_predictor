FROM python:3.6.13-slim

# Set the working directory
WORKDIR /app

# Copy all application files
COPY . .


RUN pip install --no-cache-dir -r requirements.txt


# Expose the port your Flask app runs on
EXPOSE 5000

# Command to run the Flask application
CMD ["python", "app.py"]
