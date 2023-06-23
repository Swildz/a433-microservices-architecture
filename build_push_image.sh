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
docker login ghcr.io -u swildz -p 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

# push atau mengunggah image ke github packages
docker push ghcr.io/swildz/item-app:v1