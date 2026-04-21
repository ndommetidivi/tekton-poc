# Use the lightweight Nginx image from Docker Hub
FROM nginx:alpine

# Copy your index.html file from the GitHub repo into the Nginx web folder
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80 so we can access it
EXPOSE 80

# Start Nginx automatically
CMD ["nginx", "-g", "daemon off;"]
