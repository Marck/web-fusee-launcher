# Use the official NGINX base image
FROM nginx:alpine

# Set the working directory to /usr/share/nginx/html
WORKDIR /usr/share/nginx/html

# Remove the default NGINX static files
RUN rm -rf ./*

# Copy the static files from the current directory to the container
COPY . .

# Expose port 80
EXPOSE 80

# Start NGINX
CMD ["nginx", "-g", "daemon off;"]
