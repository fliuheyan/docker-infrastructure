#!/bin/bash

cd $(dirname $0)/../zookeeper

docker-compose down

#docker network create -d host demo
docker network create demo

docker-compose up
