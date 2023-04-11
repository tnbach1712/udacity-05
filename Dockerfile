FROM nginx:1.23.4-alpine-slim

WORKDIR /app

COPY 2048 /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
