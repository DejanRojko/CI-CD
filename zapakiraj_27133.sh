#!/bin/bash

# Login to Docker Hub
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin

# Build the Docker image
docker build . -f Dockerfile -t "$DOCKER_USERNAME/$REPONAME:latest"

# Push the image to Docker Hub
docker push "$DOCKER_USERNAME/$REPONAME:latest"
