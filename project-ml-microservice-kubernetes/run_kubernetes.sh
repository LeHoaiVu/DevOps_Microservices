#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=lehoaivu52/flask_app_img:latest
# Step 2
# Run the Docker Hub container with kubernetes
kubectl run flask-app-pod --image=$dockerpath --port=8000
sleep 90
# Step 3:
# List kubernetes pods
minikube start
# Step 4:
# Forward the container port to a host
kubectl port-forward pods/flask-app-pod 8000:80