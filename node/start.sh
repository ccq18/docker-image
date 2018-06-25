#!/usr/bin/env sh
export HOST_IP=$(ifconfig en0 | grep inet | grep -v inet6 | cut -d ' ' -f2)
docker-compose  -p  words   up --build -d