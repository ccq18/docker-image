#!/bin/bash
docker build --force-rm --no-cache -t ccq18/php-supervisor .
docker push ccq18/php-supervisor