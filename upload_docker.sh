#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=celnet1/app

# Step 2:  
# Authenticate & tag
cat ~/my-pass.txt | docker login --username celnet1 --password-stdin
echo "Docker ID and Image: $dockerpath"
docker tag 4e822bc4fdf8 $dockerpath:myfirstag

# Step 3:
# Push image to a docker repository
docker push $dockerpath:myfirstag
