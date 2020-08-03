#!/bin/bash

cd $(dirname $0)/../redis

docker-compose run redis-cli $@
