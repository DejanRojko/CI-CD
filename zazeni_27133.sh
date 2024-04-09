#!/bin/bash

# Pull the most recent Docker image
docker pull "$(docker images --format '{{.Repository}}:{{.Tag}}' | head -n 1)"

# Run the most recent Docker image
docker run "$(docker images --format '{{.Repository}}:{{.Tag}}' | head -n 1)"
