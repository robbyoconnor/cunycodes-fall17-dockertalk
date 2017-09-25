FROM node:8-alpine
LABEL maintainer "Robby O'Connor <robby.oconnor@gmail.com>"
CMD ["yarn","start"]
WORKDIR /app
RUN apk add --no-cache bash curl openssl git build-base gosu yarn \
--repository http://dl-3.alpinelinux.org/alpine/edge/testing/ \
--repository http://dl-3.alpinelinux.org/alpine/edge/community/
COPY docker/build.sh /
RUN bash /build.sh
COPY . /app
