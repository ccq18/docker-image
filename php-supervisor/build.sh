#!/bin/bash
docker build --force-rm --no-cache -t ccq18/php-supervisor:$1 .
docker push ccq18/php-supervisor:$1