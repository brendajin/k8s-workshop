FROM node:carbon

WORKDIR /usr/src/app

# Install app dependencies
COPY package.json ./

RUN npm install

COPY . .

EXPOSE 3000

CMD ["npm", "start"]