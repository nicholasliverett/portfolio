FROM node:19

WORKDIR ~/docker/portfolio

EXPOSE 80

COPY . .

CMD [ "node", "index.js" ]