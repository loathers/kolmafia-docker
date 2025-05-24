# kolmafia-docker

Run KoLMafia in a container and access via a web interface

```
docker pull ghcr.io/loathers/kolmafia-docker
docker run -p 3000:3000 -p 60080:60080 -v /local_path_to_kolmafia_dir:/config/.kolmafia kolmafia-docker
```

- Web interface: http://localhost:3000
- Relay browser: http://localhost:60080/game.php

Please see https://github.com/linuxserver/docker-baseimage-kasmvnc for additional docker usage.

## Container Environment

- AUTOPOWEROFF=true (default false): Automatically power off container when exiting kolmafia
- \_JAVA_OPTIONS= (default "-XX:MaxRAMPercentage=80"): Set java launch options

## Mafia Configuration

- relayAllowRemoteAccess=true (default false): Required to connect to published relay browser port

## Known Issues

- Relay browser will not automatically open in container as no browser is available
