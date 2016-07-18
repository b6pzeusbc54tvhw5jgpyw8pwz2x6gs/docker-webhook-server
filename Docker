FROM ubuntu:14.04
MAINTAINER Alfred UC b6pzeusbc54tvhw5jgpyw8pwz2x6gs@gmail.com

RUN apt-get update

RUN apt-get install -yq python2.7-dev zip curl wget docker.io git

RUN apt-get clean \
 && rm -r /var/lib/apt/lists/* \

RUN curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.31.2/install.sh | bash

RUN cd ~ \
 && git clone https://github.com/vim/vim.git \
 && cd vim \
 && ./configure --enable-pythoninterp --with-python-config-dir=$(python2.7-config --configdir) \
 && make \
 && make install \
 && cp /usr/local/bin/vim /usr/local/bin/vi \
 && rm -rf ~/vim
