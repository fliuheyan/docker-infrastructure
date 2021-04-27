#!/bin/bash
set -ex

cd $(dirname $0)/../kafka

docker-compose down

docker-compose up


