#!/usr/bin/env bash

docker build -t project-ml .

docker tag project-ml svendenotter/project-ml:v1.0.0

docker images

docker run -d -p 80:80 project-ml

docker ps
