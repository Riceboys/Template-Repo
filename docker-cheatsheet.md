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

# Docker Compose Commands
[See tutorial on docker compose](https://youtu.be/QeQ2MH5f_BE)

Build and run all image:
```
$ docker-compose up --build
```

Build specific container 
```
$ docker-compose up --build <target name>
```

Remove container:
```
$ docker-compose down
```

Display logs when building specific images
```
$ docker-compose build --no-cache --progress=plain xrca-prod
```
