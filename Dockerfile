FROM node:16

WORKDIR /app

COPY . .

RUN npm install -g typescript && \
    yarn install && \
    yarn build

# EXPOSE 80

# CMD ["nginx", "-g", "daemon off;"]
ENTRYPOINT [ "yarn", "preview" ]