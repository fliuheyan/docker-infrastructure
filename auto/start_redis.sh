#!/bin/bash

cd $(dirname $0)/../redis

docker-compose down

docker-compose up
