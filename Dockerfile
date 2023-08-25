FROM node:19

WORKDIR ~/docker/portfolio

EXPOSE 8084

COPY . .

CMD [ "node", "index.js" ]