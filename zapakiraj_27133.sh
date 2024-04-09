#!/bin/bash

# Define variables
TAG=$(date +"%Y%m%d%H%M%S") # Format: YYYYMMDDHHMMSS

# Login to Docker Hub
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin

# Build the Docker image
docker build . -f Dockerfile -t "$DOCKER_USERNAME/$REPONAME:$TAG"

# Push the image to Docker Hub
docker push "$DOCKER_USERNAME/$REPONAME:$TAG"
