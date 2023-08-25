FROM node:18.17.0-alpine

WORKDIR ~/docker/portfolio

COPY . .

EXPOSE 8084

CMD [ "node", "index.js" ]