#!/bin/bash
docker build --force-rm --no-cache -t ccq18/php-cron:$1 .
docker push ccq18/php-cron:$1