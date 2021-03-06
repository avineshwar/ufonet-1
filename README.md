# UFONET

![logo](https://assets.gitlab-static.net/uploads/-/system/project/avatar/12904485/ufonet-logo.png)

## INDEX

- [UFONET](#ufonet)
  - [INDEX](#index)
  - [BADGES](#badges)
  - [INTRODUCTION](#introduction)
  - [PREREQUISITES](#prerequisites)
  - [INSTALL](#install)
    - [DOCKER RUN](#docker-run)
    - [DOCKER COMPOSE](#docker-compose)
  - [LICENSE](#license)

## BADGES

[![pipeline status](https://gitlab.com/oda-alexandre/ufonet/badges/master/pipeline.svg)](https://gitlab.com/oda-alexandre/ufonet/commits/master)

## INTRODUCTION

Docker image of :

- [ufonet](https://ufonet.03c8.net/)

Continuous integration on :

- [gitlab pipelines](https://gitlab.com/oda-alexandre/ufonet/pipelines)

Automatically updated on :

- [docker hub public](https://hub.docker.com/r/alexandreoda/ufonet/)

## PREREQUISITES

Use [docker](https://www.docker.com)

## INSTALL

### DOCKER RUN

```\
docker run -ti --rm --name ufonet -v ${HOME}:/home/ufonet -p 9999:9999 alexandreoda/ufonet
```

> link to Ufonet <http://0.0.0.0:9999>

### DOCKER COMPOSE

```yml
version: "3.7"

services:
  ufonet:
    container_name: ufonet
    image: alexandreoda/ufonet
    restart: "no"
    privileged: false
    environment:
      - DISPLAY
    volumes:
      - "${HOME}:/home/ufonet"
    ports:
      - "9999"
```

## LICENSE

[![GPLv3+](http://gplv3.fsf.org/gplv3-127x51.png)](https://gitlab.com/oda-alexandre/ufonet/blob/master/LICENSE)
