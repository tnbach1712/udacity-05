FROM node:16.18.1-alpine

WORKDIR /app

COPY . .

RUN yarn install

# EXPOSE 80

# CMD ["nginx", "-g", "daemon off;"]
ENTRYPOINT [ "yarn", "start" ]