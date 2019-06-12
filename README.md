# UFONET

<img src="https://ufonet.03c8.net/ufonet/ufonet-logo.png" />


## INDEX

- [Badges](#BADGES)
- [Introduction](#INTRODUCTION)
- [Prerequis](#PREREQUIS)
- [Installation](#INSTALLATION)
- [Configuration](#CONFIGURATION)
- [License](#LICENSE)


## BADGES

[![version](https://images.microbadger.com/badges/version/alexandreoda/ufonet.svg)](https://microbadger.com/images/alexandreoda/ufonet)
[![size](https://images.microbadger.com/badges/image/alexandreoda/ufonet.svg)](https://microbadger.com/images/alexandreoda/ufonet")
[![build](https://img.shields.io/docker/build/alexandreoda/ufonet.svg)](https://hub.docker.com/r/alexandreoda/ufonet)
[![automated](https://img.shields.io/docker/automated/alexandreoda/ufonet.svg)](https://hub.docker.com/r/alexandreoda/ufonet)


## INTRODUCTION

Ce repository contient le fichier Dockerfile de

- [ufonet](https://ufonet.03c8.net/)

Mis à jour automatiquement dans le [docker hub public](https://hub.docker.com/r/alexandreoda/ufonet/)


## PREREQUIS

Installer [docker](https://www.docker.com)


## INSTALLATION

```
docker run -d --name ufonet -v ${HOME}:/home/ufonet -p 9999:9999 alexandreoda/ufonet
```

lien vers Ufonet http://0.0.0.0:9999


## LICENSE

[![GPLv3+](http://gplv3.fsf.org/gplv3-127x51.png)](https://github.com/oda-alexandre/ufonet/blob/master/LICENSE)
