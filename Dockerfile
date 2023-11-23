
FROM nginx:latest


COPY . var/lib/jenkins
COPY ..
EXPOSE 84
