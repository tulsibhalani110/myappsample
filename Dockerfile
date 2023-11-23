
FROM nginx:latest
COPY /var/lib/jenkins/workspace/pilelinedevops /app


EXPOSE 84
