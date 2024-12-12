# Main commands

```bash
docker help # gets help menu to know docker commands
docker volume # show all volume
docker image # list images
docker build # Build and image from a Dockerfile
docker push  # push the image to a repo or registry (similar to maven or gradle)

docker exec # run a command in a running container (bash in this case)

docker kill # kill running containers or manage them in local envs
docker tag  # Versioning the conainer image

docker run # run on local machine
```
## options: longer and shorter convention
-c <-- our commands 

--context <-- for documentation


# Understanding the commands

```bash
docker run -d -p 80:80 docker/getting-started
```

-d - run the container in detached mode (in the background)
-p 80:80 - map port 80 of the host to port 80 in the container
docker/getting-started - the image to use


# Images vs containers

A **docker image** is the read only definition of a container
A **docker container** is a virtualized read-write enviroment

> A container is essentially just an image that's actively running

# Docker volumes or storage volumes

## analogy

Gamecube plug and play on disc
> data will loose data when the gamecube shut down

so they made a memory card to storage and save the progress

the same on docker

Image = game disk
container = running game
memory card = volumes <-- place to store data and dont loose it

users sign up, dont loose your users!

saving it in a volume will safekeep your data!


# Binding the volume to the correct  container

```bash
docker run -d -e NODE_ENV=development -e url=http://localhost:3001 -p 3001:2368 -v ghost-vol:/var/lib/ghost/content ghost
```

