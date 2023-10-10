#specify base image
FROM node:18.18.0-slim

# set directory and copy all files over
WORKDIR /src

ADD . /src

RUN npm install 
RUN npm install -g pm2@latest

EXPOSE 8080

#TODO: how to run the static files???????????
CMD pm2 start npm -- start /dist && tail -f /dev/null 
