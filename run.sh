#!/bin/bash
if [ "$1" == "start" ]; then
  echo "Starting Docker Swarm..."
  docker swarm init
  docker stack deploy -c docker-compose.yml tempconverter
elif [ "$1" == "stop" ]; then
  echo "Stopping Docker Swarm..."
  docker swarm leave --force
else
  echo "Invalid argument. Please use 'start' or 'stop'."
fi
