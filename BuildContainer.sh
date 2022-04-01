#!/bin/bash

CONTAINER_VER=5.2-r0
docker build --no-cache --file src/Dockerfile --force-rm -t laspavel/squid:$CONTAINER_VER src
docker tag laspavel/squid:$CONTAINER_VER laspavel/squid:latest
docker login
docker push laspavel/squid:$CONTAINER_VER
docker push laspavel/squid:latest
docker logout

