# CloudSim4
Dockerfile (Ubuntu, gedit, wget, git, python3, Java8, CloudSim4)

The aim of this repository is to prepare a docker image for running [CloudSim](http://www.cloudbus.org/cloudsim/).

**The following procedures are for Ubuntu 16.04 with Docker 17.12.0-ce installed**

In the terminal:
```
sudo chmod u+x CloudSim_build.sh
sudo chmod u+x CloudSim_X11.sh 

#Create a docker image cloud_sim
./CloudSim_build.sh 

#Create a container Cloud_Sim_4 using the docker image cloud_sim
./CloudSim_X11.sh 
```
**The following procedures are for MacOS 10.13.3 with Docker 17.12.0-ce installed**

[XQuartz](https://www.xquartz.org/): Preferences -> Security -> (Check) Allow connections from network clients

In the terminal:
```
sudo chmod u+x CloudSim_build.sh
sudo chmod u+x CloudSim_XQuartz.sh 

#Create a docker image cloud_sim
./CloudSim_build.sh 

#Create a container Cloud_Sim_4 using the docker image cloud_sim
./CloudSim_XQuartz.sh 
```
**In the container,** to run example 1,
```
cd jars
java -classpath cloudsim-4.0.jar:cloudsim-examples-4.0.jar org.cloudbus.cloudsim.examples.CloudSimExample1
```

To terminate, type ```exit```
