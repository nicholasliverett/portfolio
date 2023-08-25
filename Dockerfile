FROM node:19.9.0

WORKDIR ~/docker/portfolio

EXPOSE 80

COPY . .

CMD [ "node", "index.js" ]