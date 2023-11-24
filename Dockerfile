# Use a base image with Node.js
FROM node:14-alpine

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the application files
COPY . .

# Expose port 443
EXPOSE 443

# Start the application with HTTPS support
CMD ["node", "index.js"]
