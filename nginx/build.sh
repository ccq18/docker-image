#!/bin/bash
docker build --force-rm --no-cache -t ccq18/nginx:$1 .
docker push ccq18/nginx:$1