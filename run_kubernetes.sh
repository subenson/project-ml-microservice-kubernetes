#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

project=project-ml
echo "Project: $project"

dockerpath=svendenotter/$project:v1.0.0
echo "Docker ID and Image: $dockerpath"

kubectl run $project --image=$dockerpath --port=80 --labels app=$project

kubectl wait --for=condition=Ready pod/$project

kubectl get pods

kubectl port-forward $project 8000:80
