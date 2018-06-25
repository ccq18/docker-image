#!/bin/bash
docker build --force-rm --no-cache -t ccq18/kubernetes-dashboard-amd64:v1 .
docker push ccq18/kubernetes-dashboard-amd64:v1