FROM node:18.17.0-alpine

WORKDIR ~/docker/portfolio

EXPOSE 8084

COPY . .

CMD [ "node", "index.js" ]