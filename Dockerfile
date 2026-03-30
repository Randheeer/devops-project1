# Start from an existing image that has Python 3.9
FROM python:3.9-slim

# Set the working directory inside te container
WORKDIR /app

# Copy requirements.txt from the compputer into the container
COPY requirements.txt .

# Run pip install inside the container
Run pip install --no-cache-dir -r requirements.txt

# Copy the rest of your app code 
COPY app.py .

# Tell Docker that the conatiner will listen on ort 5000
EXPOSE 5000

# Command to run when the container starts 
CMD ["python", "app.py"]
