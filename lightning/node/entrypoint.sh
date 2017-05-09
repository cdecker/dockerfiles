#!/bin/bash

mkdir -p $HOME/.bitcoin/testnet3 || true

echo "Starting bitcoind"
bitcoind -testnet -daemon
echo "Waiting for bitcoind to startup"
sleep 5
echo "Starting lightningd"
/usr/bin/lightningd $@
