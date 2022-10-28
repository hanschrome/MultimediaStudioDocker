FROM local/base-md

# INSTALL GIMP

RUN apt-get install -y \
	gimp \
	--no-install-recommends

ENV DISPLAY=:0

USER developer
ENV HOME /home/developer

ENTRYPOINT [ "gimp" ]
