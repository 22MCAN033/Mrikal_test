#!/bin/bash

# Stop all running containers
echo "Stopping all running containers..."
docker-compose -f /home/ec2-user/mern-app-cicd /docker-compose.yml down || true
