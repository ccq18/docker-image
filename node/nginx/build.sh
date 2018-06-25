#!/bin/bash
docker build --force-rm --no-cache -t ccq18/nginx:v1 .
docker push ccq18/nginx:v1