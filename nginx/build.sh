#!/bin/bash
docker build --force-rm --no-cache -t ccq18/nginx .
docker push ccq18/nginx