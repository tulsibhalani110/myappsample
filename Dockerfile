
FROM nginx:latest

WORKDIR /var/lib/docker
COPY . /myappsample


EXPOSE 50
