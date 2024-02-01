FROM node:12

WORKDIR ~/docker/portfolio

COPY . .

EXPOSE 8084

CMD [ "node", "index" ]