# CloudSim4
Dockerfile (Ubuntu, gedit, wget, git, python3, Java8, CloudSim4)

The aim of this repository is to prepare a docker image for running [http://www.cloudbus.org/cloudsim/](CloudSim).

The following procedures are for Ubuntu 16.04 with Docker 17.12.0-ce installed

In the terminal:
```
sudo chmod u+x CloudSim_build.sh
sudo chmod u+x CloudSim_X11.sh 

#Create a docker image cloud_sim
./CloudSim_build.sh 

#Create a container Cloud_Sim_4 using the docker image cloud_sim
./CloudSim_X11.sh 
```

To terminate, type ```exit```
