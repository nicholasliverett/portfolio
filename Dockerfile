FROM node:18.17.0-slim

WORKDIR ~/docker/portfolio

COPY . .

EXPOSE 8084

CMD [ "node", "index.js" ]