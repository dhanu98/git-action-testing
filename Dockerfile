# Use official Node.js image as the base
FROM node:16-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the package.json and install dependencies
COPY package.json .

RUN npm install

# Copy the rest of the app
COPY . .

# Expose the port the app will run on
EXPOSE 3000

# Command to run the app
CMD ["node", "index.js"]
