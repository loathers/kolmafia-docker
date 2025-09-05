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

- `AUTOPOWEROFF=true` (default false): Automatically power off container when exiting KoLMafia
- `_JAVA_OPTIONS=` (default "-XX:MaxRAMPercentage=80"): Set java launch options
- `KOLMAFIA_OPTIONS=` (default ""): Set KoLMafia launch options for autostart. Does not apply if running from the right-click context menu

## Mafia Configuration

- `set relayAllowRemoteAccess=true` (default false): Required to connect to published relay browser port
- `relay nobrowser`: Relay server can be initialized by running this cli command, for example in a login script

## Known Issues

- Relay browser will not automatically open in container as no browser is available
