FROM node:18.17.0-alpine

WORKDIR ~/docker/portfolio

EXPOSE 80

COPY . .

CMD [ "node", "index.js" ]