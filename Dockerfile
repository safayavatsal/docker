# Use the official Nginx base image
FROM nginx:latest

# Copy the custom Nginx configuration
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copy the SSL certificates
COPY certs/nginx-selfsigned.crt /etc/nginx/certs/nginx-selfsigned.crt
COPY certs/nginx-selfsigned.key /etc/nginx/certs/nginx-selfsigned.key

# Copy the HTML file to the default Nginx directory
COPY index.html /usr/share/nginx/html/index.html

# Expose ports 80 and 443 for HTTP and HTTPS
EXPOSE 80 443

# Start the Nginx server
CMD ["nginx", "-g", "daemon off;"]