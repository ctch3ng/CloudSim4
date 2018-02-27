#!/bin/sh
 
echo "Image: cloud_sum"
echo "Alias: Cloud_Sim_4"

# run xhost and allow connections from your local machine:

ip=$(ifconfig en0 | grep inet | awk '$1=="inet" {print $2}')
xhost + $ip

docker run -it --name Cloud_Sim_4 -e DISPLAY=$ip:0 -v /tmp/.X11-unix:/tmp/.X11-unix cloud_sim

xhost - $ip
docker rm /Cloud_Sim_4
