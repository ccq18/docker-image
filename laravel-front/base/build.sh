#!/bin/bash
docker build --force-rm --no-cache -t ccq18/laravel-base:v1 .
docker push ccq18/laravel-base:v1