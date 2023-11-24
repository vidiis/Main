FROM node:14-alpine

WORKDIR /app

COPY . .

EXPOSE 443

CMD ["node", "index.js"]
