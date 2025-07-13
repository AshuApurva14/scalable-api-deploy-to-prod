#!/usr/bin/env bash

set -e

echo "Let's create a Private Image Registry for Backend services in AWS ECR"

aws ecr create-repository --repository-name node-api

echo "Wait it is creating...!"


echo "Let's create a Private Image Registry for Frontend services in AWS ECR"

aws ecr create-repository --repository-name nginx-frontend

