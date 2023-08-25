FROM node:19.7.0

WORKDIR ~/docker/portfolio

EXPOSE 80

COPY . .

CMD [ "node", "index.js" ]