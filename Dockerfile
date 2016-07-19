FROM ubuntu:14.04
MAINTAINER Alfred UC b6pzeusbc54tvhw5jgpyw8pwz2x6gs@gmail.com

RUN apt-get update

RUN apt-get install -yq zip curl wget docker.io git vim

RUN apt-get clean && rm -r /var/lib/apt/lists/*

RUN curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.31.2/install.sh | bash

RUN export NVM_DIR="/root/.nvm" && [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" && nvm install 4.4 && nvm use 4.4
