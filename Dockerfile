FROM ubuntu:latest

COPY src /bankedits
WORKDIR /bankedits

RUN  apt-get update \
 && apt-get install --yes curl libfontconfig \
 && curl -sL https://deb.nodesource.com/setup_14.x | bash - \
 && apt-get install -y nodejs

RUN npm install

CMD node anon.js
