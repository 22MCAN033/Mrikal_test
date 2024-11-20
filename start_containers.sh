# #!/bin/bash

# # Start containers using docker-compose
# cd /home/ec2-user/
# docker-compose pull
# docker-compose down
# docker-compose up -d

#!/bin/bash

# Start containers using docker-compose

# Navigate to the directory where the docker-compose.yml file is located
cd /home/ec2-user/

# Pull the latest images from the repository
echo "Pulling latest images..."
docker-compose pull || { echo "Failed to pull Docker images"; exit 1; }

# Stop any running containers (clean up previous containers)
echo "Stopping running containers..."
docker-compose down || { echo "Failed to stop existing containers"; exit 1; }

# Start containers in detached mode
echo "Starting containers..."
docker-compose up -d || { echo "Failed to start containers"; exit 1; }

echo "Containers started successfully."

