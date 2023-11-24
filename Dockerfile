
FROM nginx:latest
WORKDIR /var/lib/docker
COPY /var/lib/jenkins 


EXPOSE 50
