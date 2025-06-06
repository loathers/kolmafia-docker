FROM ghcr.io/linuxserver/baseimage-kasmvnc:alpine321
LABEL org.opencontainers.image.authors="rinn"

# install packages
RUN \
  apk add --no-cache \
    openjdk21-jre \
    jq \
    wget \
    && \
    rm -rf /tmp/* /var/cache/apk/*


# add local files
COPY root/ /

# set executable bit
RUN chmod +x /custom-cont-init.d/*

# environment variables
## fullscreen does not work well with kolmafia
ENV NO_FULL=1
ENV _JAVA_OPTIONS="-XX:MaxRAMPercentage=80"
ENV AUTOPOWEROFF=false
ENV TITLE=KoLmafia

# ports
## kolmafia relay browser port
EXPOSE 60080

# volumes
## kolmafia user directory
VOLUME [ "/config/.kolmafia" ]
