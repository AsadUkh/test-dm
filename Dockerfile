FROM node:22-alpine3.19
WORKDIR /app
COPY . /app
COPY package.json /app
RUN npm i
EXPOSE 3000
CMD ["npm", "start"]