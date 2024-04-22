# Use NGINX as the base image
FROM nginx:alpine

# Set working directory
WORKDIR /usr/share/nginx/html

# Copy HTML, CSS, JS files
COPY index.html .
COPY style.css .
COPY app.js .

# Copy images and music folders
COPY images ./images
COPY musics ./musics

# Expose port 80
EXPOSE 80
