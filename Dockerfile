# Use an official Nginx image as a base image
FROM nginx:alpine

# Copy the static website files to the Nginx html directory
COPY . /usr/share/nginx/html

# Expose port 80 to the outside world
EXPOSE 80

# Run Nginx
CMD ["nginx", "-g", "daemon off;"]
