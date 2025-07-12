#!/usr/bin/env bash

set -e

echo "Let's create a Private Image Registry in AWS ECR"

aws ecr create-repository --repository-name node-api
