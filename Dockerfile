# Use an official Node.js runtime as a parent image
FROM node:16

# Set the working directory to /app
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install all dependencies
RUN npm install

# Copy the rest of the project files to the container
COPY . .


# Expose port 3000
EXPOSE 3000

# Run the server
CMD ["npm", "run", "dev"]
