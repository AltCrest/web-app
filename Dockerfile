# Use an official Node.js runtime as a parent image
FROM node:18

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install application dependencies
RUN npm install

# Bundle app's source code inside the Docker image
COPY . .

# Your app binds to port 8080, so you need to expose it
EXPOSE 8080

# Define the command to run your app
CMD [ "node", "server.js" ]