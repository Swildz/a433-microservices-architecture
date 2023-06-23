# inisialisasi shell untuk mengakses script ini
#!/bin/sh

# build file menjadi docker image 
# lalu memberi nama image yaitu item-app dengan tag v1
docker build -t item-app:v1 .

# melihat seluruh daftar image di lokal
docker images

# Mengubah nama image agar sesuai dengan format dockerhub
docker image tag item-app:v1 ghcr.io/swildz/item-app:v1

# login ke github packages
echo $PASSWORD_DOCKER_HUB | docker login -u swildz --password-stdin ghcr.io

# push atau mengunggah image ke github packages
docker push ghcr.io/swildz/item-app:v1