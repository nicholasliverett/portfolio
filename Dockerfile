FROM node:18

WORKDIR ~/docker/portfolio

EXPOSE 8084

COPY . .

CMD [ "node", "index.js" ]