
FROM nginx:latest

WORKDIR /var/lib/docker
COPY . .


EXPOSE 50
