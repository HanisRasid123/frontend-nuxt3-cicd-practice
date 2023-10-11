#specify base image
FROM node:18.18.0-slim

# set directory and copy all files over
WORKDIR /src

ADD . /src

RUN cd website-nuxt && npm install 
RUN cd website-nuxt && npm run generate
RUN npm install -g pm2@latest
RUN npm install 

RUN mkdir -p public/dist
RUN cp -a website-nuxt/.output/public/. public/dist/
EXPOSE 8080



#TODO: how to run the static files???????????
CMD pm2 start index.js && tail -f /dev/null 
