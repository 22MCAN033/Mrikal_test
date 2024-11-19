#!/bin/bash

# Start containers using docker-compose
echo "Starting containers..."
docker-compose -f /home/ec2-user/mern-app-cicd /docker-compose.yml up -d
