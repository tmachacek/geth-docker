#!/bin/bash

docker exec -it geth-docker_eth_1 geth --exec "miner.stop()" attach /root/.ethereum/devchain/geth.ipc
docker exec -it geth-docker_eth_2 geth --exec "miner.stop()" attach /root/.ethereum/devchain/geth.ipc
docker exec -it geth-docker_eth_3 geth --exec "miner.stop()" attach /root/.ethereum/devchain/geth.ipc
