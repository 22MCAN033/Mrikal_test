#!/bin/bash

# Stop all running containers
echo "Stopping all running containers..."
docker-compose -f /home/ec2-user/app/docker-compose.yml down || true
