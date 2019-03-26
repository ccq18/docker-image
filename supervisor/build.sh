#!/bin/bash
docker build --force-rm --no-cache -t ccq18/supervisor:v2 .
docker push ccq18/supervisor:v2