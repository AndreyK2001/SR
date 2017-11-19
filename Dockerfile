FROM andrewosh/binder-base
MAINTAINER Andrey Kapelushnikov <kapelushnikov@gmail.com>
USER root

RUN echo "deb http://archive.ubuntu.com/ubuntu trusty-backports main restricted universe multiverse" >> /etc/apt/sources.list
RUN apt-get -qq update
RUN apt-get install -y software-properties-common 
RUN apt-get install -y gcc g++ wget unzip
RUN apt install -y python-pydot python-pydot-ng graphviz  
RUN apt-get install -y cmake zlib1g-dev libjpeg-dev 
RUN apt-get install -y xvfb libav-tools xorg-dev python-opengl

USER main

RUN /home/main/anaconda/envs/python3/bin/pip install --upgrade pip
RUN /home/main/anaconda/envs/python3/bin/pip install --upgrade sklearn tqdm
RUN /home/main/anaconda/envs/python3/bin/pip install --upgrade tensorflow
RUN /home/main/anaconda/envs/python3/bin/pip install --upgrade keras
