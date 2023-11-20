
FROM node:14
WORKDIR /usr/share/nginx/html

COPY . .

EXPOSE 84

CMD ["npm", "start"]
