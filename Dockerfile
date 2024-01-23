# Set the Base image
FROM python:3.9-slim-buster

# Set the working directory
WORKDIR /app

# Copy files from build context to Docker image
# First argument is the source file(s) in build context
# Second argument is the destination path in the Docker image
# '.' denotes the current directory as the source
COPY requirements.txt ./requirements.txt

# RUN command in Dockerfile
RUN pip install --no-cache-dir -r requirements.txt


# Copy local code to the container image.
COPY . .


# Set environment variable FLASK_RUN_ to 0.0.0.0
ENV FLASK_RUN_HOST=0.0.0.0

#Expose a port
EXPOSE 5000

# Define the default command to run when the container starts
CMD ["flask", "run"]