# kolmafia-docker
Run KoLMafia in a container and access via a web interface

```
docker pull ghcr.io/loathers/kolmafia-docker
docker run -p 3000:3000 -p 60080:60080 -v /local_path_to_kolmafia_dir:/config/.kolmafia kolmafia-docker
```

* http://localhost:3000
* http://localhost:60080/game.php

Please see https://github.com/linuxserver/docker-baseimage-kasmvnc for additional docker usage.

## Known Issues
* Relay browser will not automatically open a browser window, right click desktop and select 'relay browser'
