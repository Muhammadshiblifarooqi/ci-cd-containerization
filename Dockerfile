# Step 1: Use lightweight Nginx image
FROM nginx:alpine

# Step 2: Remove default nginx website
RUN rm -rf /usr/share/nginx/html/*

# Step 3: Copy frontend files to nginx directory
COPY index.html /usr/share/nginx/html/
COPY style.css /usr/share/nginx/html/

# Step 4: Expose port 80
EXPOSE 80

# Step 5: Start Nginx
CMD ["nginx", "-g", "daemon off;"]

