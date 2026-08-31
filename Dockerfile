FROM node:20-slim

WORKDIR /app

COPY package.json ./

RUN npm install

USER node

CMD ["node", "-e", "console.log('vulnerable test image running')"]
