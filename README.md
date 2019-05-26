[![Build Status](https://travis-ci.org/kijart/docker-subliminal.svg?branch=develop)](https://travis-ci.org/kijart/docker-subliminal)

# Subliminal

Run subliminal inside docker.

Docker image generated daily with the latest version of **Alpine Linux** and **subliminal**: https://hub.docker.com/r/kijart/subliminal.

## Docker setup

Install docker: https://docs.docker.com/engine/installation/

Install docker compose: https://docs.docker.com/compose/install/

Docker documentation: https://docs.docker.com/

## Usage

### Build-in docker image

- build docker image `docker build -t subliminal .`

- list subliminal options: `docker run --rm subliminal --help`

- download a subtitle: `docker run --rm -v $(pwd):/subs subliminal download -l en -l es "Game.of.Thrones.S01E01.720p.HDTV.x264-CTU.mkv"`

### Docker Hub image

- pull docker image from docker hub: `docker pull kijart/subliminal`

- download subtitles using docker image: `docker run --rm -v $(pwd):/subs kijart/subliminal download -l en -l es "Game.of.Thrones.S01E01.720p.HDTV.x264-CTU.mkv"`

- create a docker container

```
docker create \
  --name=subliminal \
  -v <path to data>:/subs \
  kijart/subliminal
```

### Docker compose

- create a container using docker-compose: `docker-compose up --no-start`

- download subtitles using docker compose: `docker-compose run --rm subliminal download -l en -l es "Game.of.Thrones.S01E01.720p.HDTV.x264-CTU.mkv"`

## More info

- Documentation: https://subliminal.readthedocs.org
