#!/usr/bin/env bash

set -e

echo "Check the currently running containers \n Checking !.........."

docker compose ps

echo "Let's stop and remove all the running containers"

docker compose down --rmi "all"

echo "Containers stopped and removed successfully!...."

