#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=nivanko/predict:1.0.1

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deployment predict --image=nivanko/predict:1.0.1

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl expose deployment predict --type="NodePort" --port 80
kubectl port-forward deployment/predict 8000:80
