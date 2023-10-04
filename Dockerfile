#specify base image
FROM node:18.18.0-slim as base

ARG PORT=3000

ENV NODE_ENV=production

# set directory and copy all files over
WORKDIR /src

#-----BUILD STAGE
FROM base as build

COPY --link package.json package-lock.json ./
RUN npm install

COPY --link . .

RUN npm run build
RUN npm prune

#-----RUN STAGE
FROM base

# define port number to be exposed (same port as app)
ENV PORT=$PORT

# copy over built application from build stage
COPY --from=build /src/.output /src/.output

CMD ["node", ".output/server/index.mjs"]