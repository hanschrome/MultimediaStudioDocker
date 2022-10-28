FROM local/base-md

RUN apt install software-properties-common -y
RUN add-apt-repository ppa:ubuntuhandbook1/audacity
RUN apt update
RUN apt install audacity -y

ENV DISPLAY=:0

USER developer
ENV HOME /home/developer

ENTRYPOINT [ "audacity" ]
