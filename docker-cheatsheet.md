## Docker Commands
Commands to access docker shell:
  - If docker container is already up and running:
    ```
    $ docker exec -it <container_id> /bin/sh
    ```
  - If docker container is not up and running:
    ```
    $ docker run -it <image_name> /bin/sh
    ```

Display all container (regardless if container is running or not):
```
$ docker ps -a
```

Display docker images:
```
$ docker images
```

Pushing docker images in development:

Here, we are pushing to the [ttl.sh registry](https://ttl.sh). ttl.sh is an ephemeral, anonymous registry so there is no need for credentials nor signup. 
1. Tag your image with ttl.sh, a UUID, & time limit (i.e. :1h). The default is 24 hours, and the max is 24 hours (valid time tags :5m, :1600s, :4h, :1d).
2. Push your image
3. Pull your image (before it expires)
```
$ docker push ttl.sh/${IMAGE_NAME}:1h
```

Pushing docker images to Docker Hub:
```
$ docker push username/image_name:tag
```
(e.g., docker push mdo6180/anacostia-executor:latest

# Docker Compose Commands
[See tutorial on docker compose](https://youtu.be/QeQ2MH5f_BE)

Build and run all images:
```
$ docker-compose up --build
```

Build specific container 
```
$ docker-compose up --build <target name>
```

Shut down and remove containers:
```
$ docker-compose down
```

Display logs when building specific images
```
$ docker-compose build --no-cache --progress=plain <target name>
```
