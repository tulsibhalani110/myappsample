
FROM nginx:latest

WORKDIR /usr/share/nginx/html
COPY . .
EXPOSE 84
CMD ["nginx", "-g", "daemon off;"]
