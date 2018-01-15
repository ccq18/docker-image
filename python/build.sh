#!/bin/bash
docker build --force-rm --no-cache -t ccq18/python .
docker push ccq18/python