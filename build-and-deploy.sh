#!/bin/bash

docker build -t haproxy-challenge:1.8 .
docker tag haproxy:1.8 haproxy-challenge:1.8
docker stack deploy -c docker-stack.yaml challenge
