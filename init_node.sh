#!/bin/bash
docker run --rm -v $(pwd)/volumes/node:/var/share/ethereum \
  ethereum/client-go --nousb --datadir /var/share/ethereum \
  init /var/share/ethereum/myGenesis.json

docker run --rm -v $(pwd)/volumes/node:/var/share/ethereum \
  ethereum/client-go --nousb --datadir /var/share/ethereum \
  account new --password /var/share/ethereum/password01 \
  | grep -E "Public address of the key: +0x[0-9a-zA-Z]+" \
  | awk '{print $6}' | tee volumes/node/account01
