# FROM node:10-alpine
# RUN mkdir -p /home/node/app/node_modules && chown -R node:node /home/node/app
# WORKDIR /home/node/app
# COPY src ./
# COPY package*.json ./
# USER node
# RUN npm install
# COPY --chown=node:node . .
# EXPOSE 3000
# ENTRYPOINT ["npm","start"]

# FROM node:10-alpine
# RUN mkdir -p /opt/app
# WORKDIR /opt/app
# COPY package.json src/package-lock.json .
# RUN npm install
# COPY src/ .
# EXPOSE 3000
# CMD [ "npm", "start"]

FROM node:12-alpine3.14
WORKDIR /app
COPY . /app
COPY package.json /app
RUN npm i

EXPOSE 3000
CMD ["npm", "start"]