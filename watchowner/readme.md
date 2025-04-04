# Watchonwer

Atualiza as imagens dos containers automaticamente.
- [DockerHub image repo](https://hub.docker.com/r/containrrr/watchtower)

- [Documentação](https://containrrr.dev/watchtower/)

#### Container selection
If you need to exclude some containers, set the com.centurylinklabs.watchtower.enable label to false. For clarity this should be set on the container(s) you wish to be ignored, this is not set on watchtower.

```yml
version: "3"
services:
  someimage:
    container_name: someimage
    labels:
      - "com.centurylinklabs.watchtower.enable=false"
```

#### Filter by enable label
Monitor and update containers that have a com.centurylinklabs.watchtower.enable label set to true.

```yml
            Argument: --label-enable
Environment Variable: WATCHTOWER_LABEL_ENABLE
                Type: Boolean
             Default: false
```             