#!/bin/bash

sudo docker run -it \
    --user=$(id -u) \
    --env="DISPLAY" \
    --volume="/home/$USER:/home/$USER" \
    --volume="/etc/group:/etc/group:ro" \
    --volume="/etc/passwd:/etc/passwd:ro" \
    --volume="/etc/shadow:/etc/shadow:ro" \
    --volume="/etc/sudoers.d:/etc/sudoers.d:ro" \
    --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
    --name Cloud_Sim_4 \
    cloud_sim

sudo docker rm /Cloud_Sim_4
