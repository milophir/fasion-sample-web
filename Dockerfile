# Use the official Nginx image from the Docker Hub
FROM nginx:alpine

# Set the working directory in the container
WORKDIR /usr/share/nginx/html

# Remove the default Nginx index.html
RUN rm -f index.html

# Copy your static website files into the container
COPY . .

# Expose port 80 to allow traffic to the Nginx server
EXPOSE 80

# Define the default command to run Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
