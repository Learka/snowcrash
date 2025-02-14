# Use an official Python runtime as a parent image
FROM python:3.7

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY requirements.txt /app
COPY tests /app
COPY main.py /app


# Install any needed packages specified in requirements.txt
RUN pip3 install -r requirements.txt

# Define environment variable
ENV NAME snowcrush

# Run app.py when the container launches
CMD ["python3.7", "main.py"]

