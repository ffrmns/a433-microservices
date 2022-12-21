#!/bin/bash

# Membuat docker image dari dockerfile
docker build -t item-app:v1 .

# Melihat daftar docker image
docker images

# Mengganti nama sesuai penamaan github packages
docker tag item-app:v1 ghcr.io/ffrmns/item-app:v1

# login dengan access token github
echo $CR_PAT | docker login ghcr.io -u ffrmns --password-stdin

# Mengunggah docker image ke github packages
docker push ghcr.io/ffrmns/item-app:v1