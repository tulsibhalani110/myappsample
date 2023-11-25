

FROM nginx:latest


COPY index.html /var/www/html/index.html
COPY nginx.conf /etc/nginx/sites-available/default

server {
    listen 65;
    example example.com;
    root /var/www/html;
    index index.html;
}
