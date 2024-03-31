# Use an official Python runtime as the base image
FROM python:3.8-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt ./

# Install any needed Python packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code into the container
COPY . .

# Make the bash script executable (if you're using the bash approach from the previous answer)
# RUN chmod +x start.sh

# Specify the command to run on container start
CMD ["python", "mircoapp.py"]
