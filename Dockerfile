FROM nvidia/cuda:10.1-cudnn7-runtime-ubuntu18.04

COPY pulse.yml .

# update packages
RUN set -x && \
    apt update && \
    apt upgrade -y

# install command
RUN set -x && \
    apt install -y wget && \
    apt install -y sudo

# anaconda
RUN set -x && \
    wget https://repo.anaconda.com/archive/Anaconda3-2019.10-Linux-x86_64.sh && \
    bash Anaconda3-2019.10-Linux-x86_64.sh -b && \
    rm Anaconda3-2019.10-Linux-x86_64.sh

# path setteing
ENV PATH $PATH:/root/anaconda3/bin