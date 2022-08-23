#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=celnet1/app

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deploy mypython-app --image=$dockerpath:myfirstag


# Step 3:
# List kubernetes pods
kubectl get pod

# Step 4:
# Forward the container port to a host
kubectl port-forward pod/mypython-app-5fcd98698c-6lv58 --address 0.0.0.0 8000:80
