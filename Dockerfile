FROM node:10.16.2-slim

WORKDIR /app/
RUN npm install --global yarn@1.13.0

COPY package.json ./
COPY yarn.lock ./
RUN yarn install

COPY . .

EXPOSE 3000
ENV NODE_ENV ${NODE_ENV:-production}
CMD ["yarn", "start:server"]
