FROM node:wheezy

MAINTAINER Markus Kramer

RUN apt-get update

RUN apt-get install -y git
RUN git clone --depth=1 --branch v0.0.6 https://github.com/benkaiser/stretto.git
RUN (cd stretto && npm install)

#RUN apt-get install -y libav-tools

EXPOSE 2000
WORKDIR /stretto
ENTRYPOINT ["node", "app.js"]

