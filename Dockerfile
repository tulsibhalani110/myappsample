
FROM nginx:latest
USER root 

COPY package*.json ./
RUN mkdir -p /var/docker
COPY . .
