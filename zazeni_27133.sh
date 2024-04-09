#!/bin/bash

# Pull the latest image from Docker Hub
docker pull "dejanrojko/ci-cd:latest"

# Run the container from the image
docker run -d --name my_app "dejanrojko/ci-cd:latest"
