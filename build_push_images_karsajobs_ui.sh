#!/bin/bash

# melakukan docker build
docker build -t ghcr.io/swildz/karsajobs-ui:latest .

# Login Github Package
# menajalankan "export PASSWORD_DOCKER_HUB =YOUR_TOKEN"
echo $PASSWORD_DOCKER_HUB | docker login ghcr.io -u swildz --password-stdin

# melakukan push image ke github package
docker push ghcr.io/swildz/karsajobs-ui:latest