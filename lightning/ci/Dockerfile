FROM ubuntu:16.04
MAINTAINER Christian Decker <decker.christian@gmail.com>

RUN useradd --disabled-password --gecos '' -ms /bin/bash builder
USER builder

RUN deb http://ppa.launchpad.net/bitcoin/bitcoin/ubuntu xenial main > /etc/apt/sources.list.d/bitcoin-bitcoin-xenial.list
RUN apt-get update -qq
RUN apt-get install -qq -y --no-install-recommends --allow-unauthenticated curl git make automake autoconf libtool bitcoind build-essential libprotobuf-c-dev libsodium-dev libbase58-dev libsqlite3-dev libgmp-dev libsqlite3-dev git net-tools valgrind ca-certificates python3