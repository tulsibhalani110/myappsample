
FROM nginx:latest
WORKDIR add/
ADD  pilelinedevops-automation.jar
COPY . .
EXPOSE 84
