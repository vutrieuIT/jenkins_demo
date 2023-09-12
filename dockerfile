FROM node:18-alpine
WORKDIR /app
COPY *.json .
RUN yarn install --production
COPY . .
CMD [ "node", "/src/index.js" ]