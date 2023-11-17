
FROM nginx:latest

WORKDIR /usr/share/nginx/html
COPY . .

EXPOSE 3000
