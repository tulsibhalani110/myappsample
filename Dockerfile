
FROM nginx:latest
WORKDIR  /var/lib/jenkins /var/lib/docker
COPY index.html /usr/share/nginx/html/

EXPOSE 50
