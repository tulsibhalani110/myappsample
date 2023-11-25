
FROM nginx:latest

COPY index.html /var/www/html/index.html
COPY nginx.conf /etc/nginx/sites-available/default

server {
    listen 94;
    server_name example.com;
    root /var/www/html;
    index index.html;
}
