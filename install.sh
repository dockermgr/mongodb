#!/usr/bin/env bash

APPNAME="mongo"
DATADIR="/srv/docker/$APPNAME"

mkdir -p "$DATADIR" && chmod -Rf 777 "$DATADIR"

if docker ps -a | grep "$APPNAME" >/dev/null 2>&1; then
docker pull mongo:latest && docker restart $APPNAME
else
sudo docker run -d \
--name="$APPNAME" \
-p 27017:27017 \
-v $DATADIR:/data/db \
-e TZ=America/New_York \
--restart unless-stopped \
mongo:latest
fi
