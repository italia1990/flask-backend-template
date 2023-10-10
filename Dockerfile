# Use an official Python
FROM python:3.9.13

# Set the working directory in the container to /app
WORKDIR /app

# Copy current directory on docker image
ADD . /app

# Install pip and dependencies
RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r /requirements.txt


EXPOSE 8000 

CMD ["python", "/app.py"]