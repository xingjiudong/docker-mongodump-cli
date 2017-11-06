#!/bin/bash
set -e
source env.config

sudo mkdir -p /data

docker run --rm  -d --net=host --name=mongo-backup-${HOSTNAME} \
-v /data:/data \
-e HOST=${HOST} \
-e DB=${DB} \
-e USERNAME=${USERNAME} \
-e PASSWORD=${PASSWORD} \
-e AUTHENTICATIONDATABASE=${AUTHENTICATIONDATABASE} \
-e OUT=${OUT} \
xingjiudong/docker-mongo-backup:latest
