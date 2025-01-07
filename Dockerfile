
FROM node:14

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package*.json ./

RUN npm install

# Bundle app source
COPY . .

EXPOSE 31337
CMD [ "npm", "start" ]
LABEL org.opencontainers.image.description DESCRIPTION
