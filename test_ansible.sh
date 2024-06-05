#!/bin/bash

# Define the container name
CONTAINER_NAME="mystacktest"

# Build the Docker image
docker build -t ansible-test-env .

# Check if a container with the same name already exists
if [ "$(docker ps -aq -f name=$CONTAINER_NAME)" ]; then
    # Stop and remove the existing container
    docker stop $CONTAINER_NAME
    docker rm $CONTAINER_NAME
fi

# Run the Docker container
docker run -it --name $CONTAINER_NAME ansible-test-env /bin/bash 

# Clean up by stopping and removing the container
#docker stop $CONTAINER_NAME
#docker rm $CONTAINER_NAME
