FROM ubuntu:16.04

RUN echo deb http://ppa.launchpad.net/bitcoin/bitcoin/ubuntu xenial main > /etc/apt/sources.list.d/bitcoin-bitcoin-xenial.list && \
    apt-get update -qq && \
    apt-get install -qq -y --no-install-recommends --allow-unauthenticated \
	    autoconf \
	    automake \
	    bitcoind \
	    build-essential \
	    ca-certificates \
	    curl \
	    libbase58-dev \
	    libgmp-dev \
	    libprotobuf-c-dev \
	    libsodium-dev \
	    libsqlite3-dev \
            zlib1g-dev \
	    libtool \
	    make \
	    net-tools \
	    python \
	    python3 \
	    valgrind \
	    git

RUN git clone https://github.com/ElementsProject/lightning.git /opt/lightningd && \
    cd /opt/lightningd && \
    ./configure && \
    make && \
    cp lightningd/lightningd lightningd/lightning_* cli/lightning-cli /usr/bin/ && \
    rm -rf /opt/lightningd

ADD entrypoint.sh /

ENTRYPOINT /entrypoint.sh
CMD ['--port=9735']
