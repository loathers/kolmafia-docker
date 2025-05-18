FROM ghcr.io/linuxserver/baseimage-kasmvnc:alpine321
LABEL org.opencontainers.image.authors="rinn"

# install packages
RUN \
  apk add --no-cache \
    chromium \
    openjdk21-jre \
    jq \
    wget \
    && \
    rm -rf /tmp/*

# add local files
COPY root/ /

# environment variables
## fullscreen does not work well with kolmafia
ENV NO_FULL=1

# ports
## kolmafia relay browser port
EXPOSE 60080

# volumes
## kolmafia user directory
VOLUME [ "/config/.kolmafia" ]
