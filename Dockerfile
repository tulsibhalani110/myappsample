
FROM nginx:latest
WORKDIR 

COPY index.html /usr/share/nginx/html/
COPY packages*. jison ./
ADD  pilelinedevops-automation.jar

COPY . .
EXPOSE 84
