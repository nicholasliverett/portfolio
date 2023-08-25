FROM node:18

WORKDIR ~/docker/portfolio

COPY . .

EXPOSE 8084

CMD [ "node", "index.js" ]