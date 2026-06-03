FROM node
EXPOSE 3000
LABEL This is a node js code application for movie tickets booking
WORKDIR /myapp
COPY package*.json .
RUN npm install
COPY . .
CMD ["npm", "start"]
