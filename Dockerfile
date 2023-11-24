
FROM nginx:latest
COPY /var/lib/docker 
COPY . usr/share/nginx/html/


EXPOSE 50
