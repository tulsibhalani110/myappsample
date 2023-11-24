
FROM nginx:latest

WORKDIR /var/lib/docker
COPY . index.html /myappsample/usr/share/nginx/html/


EXPOSE 50
