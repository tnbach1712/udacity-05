FROM node:16.18.1-alpine3.16

WORKDIR /app

COPY . .
# RUN rm -r node_modules
RUN npm install -g typescript && \
    yarn add typescript --dev && \
    yarn install && \
    yarn build

# EXPOSE 80

# CMD ["nginx", "-g", "daemon off;"]
ENTRYPOINT [ "yarn", "preview" ]