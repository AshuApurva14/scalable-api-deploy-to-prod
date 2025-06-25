#!/usr/bin/env bash

set -e

echo "List all docker compose file and docker files"

ls -la  Dockerfile docker-compose.yml

echo "======== Check the existing images ========"

docker compose images

echo "done!....."

echo "Now, let's start the application......"

echo "====!=======!=============!.... Starting the Application =====!============!----========"

docker compose up --build -d

echo "----!============= Application Started ====!==============!-----========"

