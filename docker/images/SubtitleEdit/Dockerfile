FROM local/base-md

# INSTALL SUBTITLE EDIT

RUN apt-get install mono-complete -y
RUN apt-get install libhunspell-dev -y 
RUN apt-get install libmpv-dev -y 
RUN apt-get install tesseract-ocr -y 
RUN apt-get install vlc -y 
RUN apt-get install ffmpeg -y 

RUN mkdir /var/se && cd /var/se
RUN wget https://github.com/SubtitleEdit/subtitleedit/releases/download/3.6.7/SE367.zip
RUN unzip SE367.zip
RUN chmod 777 SubtitleEdit.exe

ENV DISPLAY=:0

USER developer
ENV HOME /home/developer

CMD mono SubtitleEdit.exe