# Use a Node.js image for building and serving the frontend
FROM node:18


WORKDIR /app

COPY package*.json ./

# Install dependencies
RUN npm install

# Copy all frontend source code
COPY . .

# Build the production version of the frontend
RUN npm run build

# Install a static file server (e.g., `serve`) globally
RUN npm install -g serve

EXPOSE 3000

# Start the static file server
CMD ["serve", "-s", "build", "-l", "3000"]
