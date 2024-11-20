# #!/bin/bash

# # Stop all running containers

# cd /home/ec2-user/
# docker-compose down

#!/bin/bash

# Stop all running containers using docker-compose

# Navigate to the directory where the docker-compose.yml file is located
cd /home/ec2-user/

# Stop running containers
echo "Stopping containers..."
docker-compose down || { echo "Failed to stop containers"; exit 1; }

echo "Containers stopped successfully."
