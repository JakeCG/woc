FROM node:20-alpine

WORKDIR /usr/src

COPY package*.json ./

RUN npm ci --only=production

COPY . .

EXPOSE 3000

ENV NODE_ENV=production

CMD ["node", "src/index.js"]