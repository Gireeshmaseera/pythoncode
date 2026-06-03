FROM node:19-alpine as firststage
WORKDIR /myapp
COPY package*.json .
RUN npm install
RUN echo "multi stage dockerfile"

FROM firststage as final
RUN npm install --production
COPY . .
CMD ["npm", "start"]
