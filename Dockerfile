FROM node:20-slim

WORKDIR /app

COPY package.json package-lock.json* ./

RUN npm install

CMD ["node", "-e", "console.log('vulnerable test image running')"]
