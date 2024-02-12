FROM node:21-alpine3.18

WORKDIR /app

COPY package.json package.json  

RUN npm install
RUN rm -f .npmrc

COPY . .

RUN npm run build

ENV PORT=3000
ENV NODE_ENV='production'

EXPOSE 3000

CMD node build