
FROM nginx:latest
WORKDIR add/
COPY packages*. jison ./
ADD  pilelinedevops-automation.jar

COPY . .
EXPOSE 84
