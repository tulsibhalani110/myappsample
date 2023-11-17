
FROM nginx:latest

COPY /usr/share/nginx/html
COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 84
CMD ["nginx", "-g", "daemon off;"]
