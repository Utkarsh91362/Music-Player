# Use NGINX as the base image
FROM nginx:alpine

# Set working directory
WORKDIR /usr/share/nginx/html

#Removes default NGINX static files
RUN rm -rf ./*

# Copy HTML, CSS, JS files
COPY index.html .
COPY style.css .
COPY app.js .
COPY data.js .

# Copy images and music folders
COPY images ./images
COPY musics ./musics

# Expose port 80
EXPOSE 80