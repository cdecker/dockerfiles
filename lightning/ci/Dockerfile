FROM ubuntu:16.04
MAINTAINER Christian Decker <decker.christian@gmail.com>

RUN useradd -ms /bin/bash builder

RUN echo deb http://ppa.launchpad.net/bitcoin/bitcoin/ubuntu xenial main > /etc/apt/sources.list.d/bitcoin-bitcoin-xenial.list
RUN apt-get update -qq
RUN apt-get install -qq -y --no-install-recommends --allow-unauthenticated curl git make automake autoconf libtool bitcoind build-essential libprotobuf-c-dev libsodium-dev libbase58-dev libsqlite3-dev libgmp-dev libsqlite3-dev git net-tools valgrind ca-certificates python3
RUN mkdir /build && chown builder /build
WORKDIR /build

#USER builder
