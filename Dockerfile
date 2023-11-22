
FROM nginx:latest


COPY index.html /usr/share/nginx/html/

COPY ..
EXPOSE 84
