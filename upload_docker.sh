#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

dockerpath=svendenotter/project-ml:v1.0.0
echo "Docker ID and Image: $dockerpath"

docker login
docker tag project-ml $dockerpath

docker image push $dockerpath
