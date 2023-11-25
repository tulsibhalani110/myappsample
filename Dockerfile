
FROM nginx:latest
USER root 

COPY package*.json ./
RUN mkdir -p /var/docker
COPY index.html /var/www/html/index.html
COPY nginx.conf /etc/nginx/sites-available/default

server {
    listen 94;
    root /var/www/html;
    index index.html;
}
