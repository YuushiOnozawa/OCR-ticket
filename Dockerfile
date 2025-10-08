# Use a lightweight Nginx image
FROM nginx:alpine

# Remove the default Nginx welcome page
RUN rm -rf /usr/share/nginx/html/*

# Copy static assets from the 'src' directory
# In a real-world scenario, you would copy build artifacts from a 'dist' directory
COPY ./src/ /usr/share/nginx/html/

# Expose port 80 for incoming traffic
EXPOSE 80

# Start Nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]
