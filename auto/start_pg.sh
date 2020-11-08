#!/bin/bash
set -ex

#sudo mkdir -p /docker-entrypoint-initdb.d

#rm /docker-entrypoint-initdb.d/*

cd $(dirname $0)/../postgres

docker-compose down

docker-compose up


