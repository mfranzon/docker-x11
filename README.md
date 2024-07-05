# Docker x11


```console
xhost +local:docker
```

```console
docker run -it \   
    --env="DISPLAY" \
    --env="XAUTHORITY=${XAUTHORITY}" \
    --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
    <your-image-with-gui>
```

The command xhost +local:docker is used to allow the Docker container to access the X server on the host machine for displaying graphical applications.