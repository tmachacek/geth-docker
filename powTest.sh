#!/bin/bash

for i in {1..100}
do
	echo $i
	docker exec geth-docker_eth_9 geth --jspath "/root/.ethereum/devchain" --exec 'loadScript("consumer.js")' attach /root/.ethereum/devchain/geth.ipc
	docker exec geth-docker_eth_4 geth --jspath "/root/.ethereum/devchain" --exec 'loadScript("producer.js")' attach /root/.ethereum/devchain/geth.ipc
	docker exec geth-docker_eth_1 geth --jspath "/root/.ethereum/devchain" --exec 'loadScript("auction.js")' attach /root/.ethereum/devchain/geth.ipc
	#docker exec geth-docker_eth_6 geth --jspath "/root/.ethereum/devchain" --exec 'loadScript("consumer.js")' attach /root/.ethereum/devchain/geth.ipc
	#docker exec geth-docker_eth_5 geth --jspath "/root/.ethereum/devchain" --exec 'loadScript("consumer.js")' attach /root/.ethereum/devchain/geth.ipc
	#docker exec geth-docker_eth_3 geth --jspath "/root/.ethereum/devchain" --exec 'loadScript("consumer.js")' attach /root/.ethereum/devchain/geth.ipc
	#docker exec geth-docker_eth_2 geth --jspath "/root/.ethereum/devchain" --exec 'loadScript("consumer.js")' attach /root/.ethereum/devchain/geth.ipc
done
