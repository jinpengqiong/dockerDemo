FROM node:12-alpine
RUN apk add --no-cache python g++ make
WORKDIR /app
COPY . .
RUN yarn install --production
EXPOSE 3000/tcp
CMD ["node", "src/index.js"]