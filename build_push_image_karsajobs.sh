#!/bin/sh

# Membuat docker image dari dockerfile
docker build -t karsajobs:latest .

# Melihat daftar docker image
docker images

# Mengganti nama sesuai penamaan github packages
docker tag karsajobs:latest ghcr.io/ffrmns/karsajobs:latest

# login dengan access token github
echo $CR_PAT | docker login ghcr.io -u ffrmns --password-stdin

# Mengunggah docker image ke github packages
docker push ghcr.io/ffrmns/karsajobs:latest