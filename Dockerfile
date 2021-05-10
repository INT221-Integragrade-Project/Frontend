FROM node:lts-alpine
RUN npm install -g http-server
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build
#COPY nginx.conf /etc/nginx/conf.d/default.conf
#EXPOSE 8080
#CMD [ "http-server", "dist" ]