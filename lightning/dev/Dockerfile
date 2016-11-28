FROM cdecker/bitcoin-dev:precompile
RUN apt-get update && apt-get install -y autoconf git libtool pkgconf build-essential libgmp-dev
ENV LD_LIBRARY_PATH=/usr/local/lib
RUN cd /tmp/; wget https://github.com/google/protobuf/releases/download/v2.6.1/protobuf-2.6.1.tar.bz2 && tar -xvjf protobuf-2.6.1.tar.bz2 && cd protobuf-2.6.1 && ./autogen.sh && ./configure && make && make install && rm -rf /tmp/protobuf-2.6.1
RUN cd /opt; git clone https://github.com/protobuf-c/protobuf-c.git; cd protobuf-c; ./autogen.sh && ./configure && make && make install && rm -rf /opt/protobuf-c
RUN cd /opt; git clone https://github.com/jedisct1/libsodium.git && cd libsodium && ./autogen.sh && ./configure && make && make install && rm -rf /opt/libsodium
RUN git clone https://github.com/ElementsProject/lightning.git /lightning && cd /lightning && git submodule init && git submodule update && make
