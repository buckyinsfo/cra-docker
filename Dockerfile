FROM node:12.18-alpine
ENV NODE_ENV=production
WORKDIR /usr/src/app
COPY ["package.json", "package-lock.json*", "npm-shrinkwrap.json*", "./"]
RUN npm install --production --silent && mv node_modules ../
COPY . .
EXPOSE 3000
CMD ["npm", "start"]




# FROM node:12.18-alpine
# WORKDIR /app
# COPY package*.json ./
# RUN npm install
# COPY . .
# CMD [ "npm", "start" ]
