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
