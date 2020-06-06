#!/bin/bash
if [[ ! `docker network ls|grep apt_cacher_network` ]]; then
    docker network create apt_cacher_network
fi

docker-compose up -d