#!/bin/bash

docker build -t haproxy-challenge:1.8 .
#Add tag to rename Docker image
docker tag haproxy:1.8 haproxy-challenge:1.8
docker stack deploy -c docker-stack.yaml challenge
