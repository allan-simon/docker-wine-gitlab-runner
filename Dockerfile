FROM debian:stretch
MAINTAINER allan.simon@supinfo.com
ENV DEBIAN_FRONTEND=noninteractive
ENV LANG=C.UTF-8


RUN dpkg --add-architecture i386 && \
    apt-get update && \
    apt-get upgrade -y && \
    echo ttf-mscorefonts-installer msttcorefonts/accepted-mscorefonts-eula select true | debconf-set-selections && \
    apt-get install -y \
        python3 \
        python3-venv \
        python3-pip \
        build-essential \
        libyaml-dev \
        python3-dev \
        libffi-dev \
        libssl-dev \
        wine && \
    pip3 install pip --upgrade
