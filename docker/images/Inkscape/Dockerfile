FROM local/base-md

# INSTALL INKSCAPE

RUN apt-get install -y \
	inkscape \
	--no-install-recommends

ENV DISPLAY=:0

USER developer
ENV HOME /home/developer

ENTRYPOINT [ "inkscape" ]