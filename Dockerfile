
FROM nginx:latest
COPY /var/lib/jenkins
COPY index.html /usr/share/nginx/html/


EXPOSE 84
