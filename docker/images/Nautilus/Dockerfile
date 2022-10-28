FROM local/base-md

# INSTALL Nautilus with image and video preview

RUN DEBIAN_FRONTEND=noninteractive apt-get install keyboard-configuration -y

RUN apt-get install -y nautilus dconf-editor eog vlc

ENV DISPLAY=:0

USER developer
ENV HOME /home/developer

ENTRYPOINT ["nautilus"]
