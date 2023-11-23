
FROM nginx:latest
COPY /var/lib/jenkins/workspace/pilelinedevops /app

COPY index.html /usr/share/nginx/html
EXPOSE 84
