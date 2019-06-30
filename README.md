# UFONET

<img src="https://ufonet.03c8.net/ufonet/ufonet-logo.png" width="200" height="200"/>


## INDEX

- [Badges](#BADGES)
- [Introduction](#INTRODUCTION)
- [Prerequisites](#PREREQUISITESITES)
- [Install](#INSTALL)
- [Configuration](#CONFIG)
- [License](#LICENSE)


## BADGES

[![pipeline status](https://gitlab.com/oda-alexandre/ufonet/badges/master/pipeline.svg)](https://gitlab.com/oda-alexandre/ufonet/commits/master)


## INTRODUCTION

Docker image of :

- [ufonet](https://ufonet.03c8.net/)

Continuous integration on :

- [gitlab](https://gitlab.com/oda-alexandre/ufonet/pipelines)

Automatically updated on :

- [docker hub public](https://hub.docker.com/r/alexandreoda/ufonet/)


## PREREQUISITES

Use [docker](https://www.docker.com)


## INSTALL

```
docker run -d --name ufonet -v ${HOME}:/home/ufonet -p 9999:9999 alexandreoda/ufonet
```

link to Ufonet http://0.0.0.0:9999


## LICENSE

[![GPLv3+](http://gplv3.fsf.org/gplv3-127x51.png)](https://gitlab.com/oda-alexandre/ufonet/blob/master/LICENSE)
