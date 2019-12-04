FROM node:10.16.2-slim

WORKDIR /app/
RUN npm install --global yarn@1.19.2

COPY package.json ./
COPY yarn.lock ./
RUN yarn install

COPY . .
RUN yarn compile

EXPOSE 3000
ENV NODE_ENV ${NODE_ENV:-production}
CMD ["yarn", "start:server"]
