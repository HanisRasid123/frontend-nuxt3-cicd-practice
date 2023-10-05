#specify base image
FROM node:18.18.0-slim

# set directory and copy all files over
WORKDIR /src

ADD . /src

RUN npm install 
RUN npm install -g pm2@latest

EXPOSE 3000

CMD pm2 start npm -- run dev && tail -f /dev/null