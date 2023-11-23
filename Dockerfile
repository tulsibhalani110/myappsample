
FROM nginx:latest

COPY index.html /usr/share/nginx/html/   var/lib/jenkins
EXPOSE 84
