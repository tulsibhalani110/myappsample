
FROM nginx:latest


COPY index.html /usr/share/nginx/html/
ADD  pilelinedevops-automation.jar

COPY ..
EXPOSE 84
