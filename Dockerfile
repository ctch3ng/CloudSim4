FROM ubuntu
RUN apt-get update && apt-get install -y python3
RUN apt-get install -y python3-software-properties
RUN apt-get install -y software-properties-common
RUN add-apt-repository ppa:webupd8team/java && apt-get update

RUN echo "oracle-java8-installer shared/accepted-oracle-license-v1-1 select true" | debconf-set-selections
RUN echo "oracle-java8-installer shared/accepted-oracle-license-v1-1 seen true" | debconf-set-selections

RUN apt-get install -y oracle-java8-installer
RUN apt-get install oracle-java8-set-default

RUN apt-get install -y wget
RUN apt-get install -y gedit
RUN apt-get install -y git

WORKDIR /home
RUN wget https://github.com/Cloudslab/cloudsim/releases/download/cloudsim-4.0/cloudsim-4.0.tar.gz
RUN tar -xvzf cloudsim-4.0.tar.gz

WORKDIR /home/cloudsim-4.0

