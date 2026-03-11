# Use a lightweight Python base image from Docker Hub
FROM python:3.13-alpine

# Set the working directory inside the container
WORKDIR /usr/local/app

# Copy the requirements file and install dependencies
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application source code
COPY src ./src

# Expose the port the app runs on
EXPOSE 8080

# Define the command to run the application when the container starts
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8080"]
