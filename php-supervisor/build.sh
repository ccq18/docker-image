#!/bin/bash
docker build --force-rm --no-cache -t ccq18/php-supervisor:v1 .
docker push ccq18/php-supervisor:v1