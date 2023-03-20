## 👋 Welcome to mongodb 🚀  

mongodb README  
  
  
## Requires scripts to be installed  

```shell
 sudo bash -c "$(curl -q -LSsf "https://github.com/systemmgr/installer/raw/main/install.sh")"
 systemmgr --config && systemmgr install scripts  
```

## Automatic install/update  

```shell
dockermgr update mongodb
```

OR

```shell
mkdir -p "$HOME/.local/share/srv/docker/mongodb/dataDir"
git clone "https://github.com/dockermgr/mongodb" "$HOME/.local/share/CasjaysDev/dockermgr/mongodb"
cp -Rfva "$HOME/.local/share/CasjaysDev/dockermgr/mongodb/dataDir/." "$HOME/.local/share/srv/docker/mongodb/dataDir/"
```

## via command line  

```shell
docker pull casjaysdevdocker/mongodb:latest && \
docker run -d \
--restart always \
--privileged \
--name casjaysdevdocker-mongodb \
--hostname casjaysdev-mongodb \
-e TZ=${TIMEZONE:-America/New_York} \
-v $HOME/.local/share/srv/docker/mongodb/dataDir/data:/data:z \
-v $HOME/.local/share/srv/docker/mongodb/dataDir/config:/config:z \
-p 80:80 \
casjaysdevdocker/mongodb:latest
```

## via docker-compose  

```yaml
version: "2"
services:
  mongodb:
    image: casjaysdevdocker/mongodb
    container_name: mongodb
    environment:
      - TZ=America/New_York
      - HOSTNAME=casjaysdev-mongodb
    volumes:
      - $HOME/.local/share/srv/docker/mongodb/dataDir/data:/data:z
      - $HOME/.local/share/srv/docker/mongodb/dataDir/config:/config:z
    ports:
      - 80:80
    restart: always
```

## Author  

📽 dockermgr: [Github](https://github.com/dockermgr) 📽  
🤖 casjay: [Github](https://github.com/casjay) [Docker](https://hub.docker.com/r/casjay) 🤖  
⛵ CasjaysDevDocker: [Github](https://github.com/casjaysdevdocker) [Docker](https://hub.docker.com/r/casjaysdevdocker) ⛵  
