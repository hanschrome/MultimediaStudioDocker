FROM ubuntu:20.04

# SET THE TIMEZONE

ENV TZ=Europe/Madrid
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# UPDATE THE OS

RUN apt-get update -y && apt-get upgrade -y

# INSTALL FONTS AND COMMON LIBRARIES

RUN DEBIAN_FRONTEND=noninteractive apt-get install keyboard-configuration -y

RUN apt install fonts-liberation libasound2 libatk-bridge2.0-0 libatk1.0-0 libatspi2.0-0 libcairo2 libcups2 libcurl4 libdbus-1-3 libdrm2 libexpat1 libgbm1 libglib2.0-0 libgtk-3-0 libnspr4 libnss3 libpango-1.0-0 libx11-6 libxcb1 libxcomposite1 libxdamage1 libxext6 libxfixes3 libxkbcommon0 libxrandr2 xdg-utils -y
RUN apt install wget curl -y

RUN apt install sudo pulseaudio libpulse0 libasound2 libasound2-plugins -y
RUN apt install -y alsa-base alsa-utils

# CREATE THE USER

RUN export uid=1000 gid=1000 && \
    mkdir -p /home/developer && \
    echo "developer:x:${uid}:${gid}:Developer,,,:/home/developer:/bin/bash" >> /etc/passwd && \
    echo "developer:x:${uid}:" >> /etc/group && \
    echo "developer ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/developer && \
    chmod 0440 /etc/sudoers.d/developer && \
    chown ${uid}:${gid} -R /home/developer
