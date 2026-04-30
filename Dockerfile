# Step 1: Use an official Python image as a base
FROM python:3.9-slim

# Step 2: Set the directory inside the container where our code will live
WORKDIR /app

# Step 3: Copy our local files into the container
COPY . /app

# Step 4: Install the library needed for our car parts site
RUN pip install flask

# Step 5: Tell the container to listen on port 5000
EXPOSE 5000

# Step 6: The command to start our app
CMD ["python", "app.py"]
