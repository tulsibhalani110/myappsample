
FROM nginx:latest


COPY index.html /var/lib/jenkins

COPY ..
EXPOSE 84
