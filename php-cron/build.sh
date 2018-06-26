#!/bin/bash
docker build --force-rm --no-cache -t ccq18/php-cron:v2 .
docker push ccq18/php-cron:v2