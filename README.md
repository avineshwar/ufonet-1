# UFONET

![ufonet](https://raw.githubusercontent.com/oda-alexandre/ufonet/master/img/logo-ufonet.png) ![docker](https://raw.githubusercontent.com/oda-alexandre/ufonet/master/img/logo-docker.png)


## INDEX

- [Build Docker](#BUILD)
- [Introduction](#INTRODUCTION)
- [Prerequis](#PREREQUIS)
- [Installation](#INSTALLATION)
- [Configuration](#CONFIGURATION)
- [License](#LICENSE)


## BUILD DOCKER

[![ufonet docker build](https://img.shields.io/docker/build/alexandreoda/ufonet.svg)](https://hub.docker.com/r/alexandreoda/ufonet)


## INTRODUCTION

Ce repository contient le fichier Dockerfile de [Ufonet](https://ufonet.03c8.net/) pour [Docker](https://www.docker.com), mis à jour automatiquement dans le [Docker Hub](https://hub.docker.com/r/alexandreoda/ufonet/) public.


## PREREQUIS

Installer [Docker](https://www.docker.com)


## INSTALLATION

```
docker run -d --name ufonet -p 9999:9999 -e DISPLAY alexandreoda/ufonet
```

lien vers Ufonet http://0.0.0.0:9999


## CONFIGURATION

Pour vérifier que Ufonet utilise le réseau tor

```
docker exec -ti ufonet /bin/bash
./ufonet --check-tor --proxy="http://127.0.0.1:8118"
```


## LICENSE

[![GPLv3+](http://gplv3.fsf.org/gplv3-127x51.png)](https://github.com/oda-alexandre/ufonet/blob/master/LICENSE)
