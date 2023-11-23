
FROM docker:latest
WORKDIR /var/lib/docker
COPY /var/lib/jenkins
COPY index.html /usr/share/nginx/html/


EXPOSE 50
