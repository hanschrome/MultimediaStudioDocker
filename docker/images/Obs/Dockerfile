FROM local/base-md

# INSTALL OPENSHOT

RUN apt-get install -y \
	obs-studio \
	--no-install-recommends

ENV DISPLAY=:0

USER developer
ENV HOME /home/developer

ENTRYPOINT [ "obs" ]
