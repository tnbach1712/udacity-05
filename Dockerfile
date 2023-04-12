FROM node:16.18.1-alpine3.16

WORKDIR /app

COPY . .
# RUN rm -r node_modules
RUN sudo npm install -g typescript && \
    yarn install && \
    yarn build

# EXPOSE 80

# CMD ["nginx", "-g", "daemon off;"]
ENTRYPOINT [ "yarn", "preview" ]