#!/bin/bash
docker build --force-rm --no-cache -t ccq18/php-cli:7.1-v2 .
docker push ccq18/php-cli:7.1-v2