#!/usr/bin/env bash

mkdir -p /srv/docker/mongodb/ && chmod -Rf 777 /srv/docker/mongodb

sudo docker run -d \
--name=mongodb \
-p 27017:27017 \
-v /srv/docker/mongodb:/data/db \
-e TZ=America/New_York \
--restart unless-stopped \
mongo:latest
