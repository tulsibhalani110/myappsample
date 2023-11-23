
FROM nginx:latest
WORKDIR /var/lib/docker /var/lib/jenkins
COPY index.html /usr/share/nginx/html/

EXPOSE 50
