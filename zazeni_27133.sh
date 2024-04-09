#!/bin/bash

# Pull the latest image from Docker Hub
docker pull "$DOCKER_USERNAME/$REPONAME:latest"

# Run the container from the image
docker run -d --name my_app "$DOCKER_USERNAME/$REPONAME:latest"
