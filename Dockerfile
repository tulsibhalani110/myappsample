
FROM nginx:latest

WORKDIR /var/lib/docker/tmp/buildkit-mount96358845/Dockerfile
COPY . .


EXPOSE 50
