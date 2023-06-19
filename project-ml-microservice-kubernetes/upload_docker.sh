#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=flask_app_img
# Step 2:  
# Authenticate & tag
docker login
echo "Docker ID and Image: $dockerpath"
# docker login
docker tag  $dockerpath lehoaivu52/flask_app_img:latest
# Step 3:
# Push image to a docker repository
docker push lehoaivu52/flask_app_img:latest