#!/bin/bash
docker build --force-rm --no-cache -t ccq18/nginx:v2 .
docker push ccq18/nginx:v2