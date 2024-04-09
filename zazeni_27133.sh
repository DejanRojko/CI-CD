#!/bin/bash

# Pull the most recent Docker image
image=$(docker images --format '{{.Repository}}:{{.Tag}}' | head -n 1)
docker pull "$image"

# Run the most recent Docker image
docker run -it --entrypoint /bin/bash "$image" -c "apt-get update && apt-get install -y python3 && python3"
