
FROM nginx:latest


WOERDIR add                 var/lib/jenkins
COPY ..
EXPOSE 84
