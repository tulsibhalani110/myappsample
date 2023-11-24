
FROM nginx:latest

WORKDIR /myappsample
COPY . index.html /myappsample/usr/share/nginx/html/


EXPOSE 50
