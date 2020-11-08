#!/bin/bash
set -ex

cd $(dirname $0)/../mysql

docker-compose down

docker-compose up


