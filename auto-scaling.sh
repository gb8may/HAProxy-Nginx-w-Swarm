#!/bin/bash

#Author: Mayara Gouveia

echo "Hello! This script will help you with auto scaling of your Swarm cluster."
echo
echo "How many replicas do you want to provision?"
read replica

docker service scale challenge_haproxy=$replica

echo "Done!"

docker service ls
