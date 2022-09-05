FROM ghcr.io/linuxserver/baseimage-rdesktop-web:alpine

# install packages
RUN \
  apk add --no-cache \
    openjdk17 \
    jq \
    wget \
    && \
    rm -rf \
    /tmp/*

# add local files
COPY 99-install-kolmafia /etc/cont-init.d/99-install-kolmafia

# set application to lauch when accessing the web interface :3000
RUN echo 'cd /kolmafia && java -DuseCWDasROOT=true -jar /etc/kolmafia/kolmafia.jar' > /defaults/autostart

# ports and volumes
EXPOSE 60080
VOLUME [ "/kolmafia" ]
