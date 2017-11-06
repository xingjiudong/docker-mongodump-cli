#!/bin/bash
set -e
source env.config

sudo mkdir -p /data

docker run --rm -d --net=host \
-v /data:/data \
-e HOST=${HOST} \
-e DB=${DB} \
-e USERNAME=${USERNAME} \
-e PASSWORD=${PASSWORD} \
-e AUTHENTICATIONDATABASE=${AUTHENTICATIONDATABASE} \
-e OUT=${OUT} \
mongo-backup:latest
