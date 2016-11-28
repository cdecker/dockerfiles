FROM ubuntu:16.04
ENV LIGHTNINGD_VERSION=v0.5.2-2016-11-21

RUN echo deb http://ppa.launchpad.net/bitcoin/bitcoin/ubuntu xenial main > /etc/apt/sources.list.d/bitcoin-bitcoin-xenial.list && \
    apt-get update -qq && \
    apt-get install -qq -y --no-install-recommends --allow-unauthenticated git make automake autoconf libtool bitcoind build-essential libprotobuf-c-dev libsodium-dev libbase58-dev libsqlite3-dev libgmp-dev libsqlite3-dev git net-tools valgrind curl ca-certificates

RUN git clone https://github.com/ElementsProject/lightning.git /opt/lightningd && \
    cd /opt/lightningd && \
    git checkout $LIGHTNINGD_VERSION && \
    make && cp daemon/lightningd daemon/lightning-cli /usr/bin/

