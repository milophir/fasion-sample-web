# Use an appropriate base image
FROM node:14

# Set the working directory
WORKDIR /app

# Install dependencies
COPY package*.json ./
RUN npm install

# Copy application code
COPY . .

# Build the application (adjust according to your setup)
RUN npm run build

# Expose the port (adjust according to your app’s needs)
EXPOSE 80

# Define the command to run the app
CMD ["npm", "start"]
