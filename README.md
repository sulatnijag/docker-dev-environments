# docker-dev-environments
Docker development environments


## Build docker image and start the cotainers.
docker compose -f "docker-compose.yml" up -d --build


# Attach shell to running contaoiner
```
    docker exec -it <container id> sh
```



# Useful commands
npm install -g @angular/cli@1.6.2
npm install -g @angular-devkit/core@0.3.2