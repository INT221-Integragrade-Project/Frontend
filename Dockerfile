FROM node:12.13.0-alpine
RUN npm install -g http-server
WORKDIR /src
COPY package*.json ./
RUN npm install
RUN npm i -f
COPY . .
RUN npm run build
EXPOSE 8080
CMD [ "http-server", "dist" ]