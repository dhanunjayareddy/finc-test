# Use the official NGINX base image
FROM nginx:latest

# Copy custom configuration, if needed (optional)
# COPY nginx.conf /etc/nginx/nginx.conf

# Set up a default HTML page
RUN echo '<h1>Hello Dhanunjay!</h1>' > /usr/share/nginx/html/index.html

# Expose the HTTP port
EXPOSE 80

# Start NGINX
CMD ["nginx", "-g", "daemon off;"]
