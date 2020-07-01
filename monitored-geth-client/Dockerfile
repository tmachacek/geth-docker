FROM ethereum/client-go

RUN apk add --update git bash nodejs nodejs-npm perl

RUN cd /root &&\
    git clone https://github.com/cubedro/eth-net-intelligence-api &&\
    cd eth-net-intelligence-api &&\
    npm install &&\
    npm install -g pm2 &&\
    npm install -g truffle &&\
    npm install -g solc &&\
    cd .. &&\
    mkdir -p truffleTest &&\
    cd truffleTest &&\
    truffle init &&\
    rm truffle-config.js &&\
    cd migrations &&\
    rm 1_initial_migration.js
    
ADD 1_initial_deployment.js /root/truffleTest/migrations/1_initial_deployment.js
ADD DoubleAuction.sol /root/truffleTest/contracts/DoubleAuction.sol
ADD HelloWorld.sol /root/truffleTest/contracts/HelloWorld.sol
ADD truffle-config.js /root/truffleTest/truffle-config.js

RUN cd /root/truffleTest &&\
    truffle compile

ADD start.sh /root/start.sh
ADD app.json /root/eth-net-intelligence-api/app.json
ADD genesis.json /root/files/genesis.json
RUN chmod +x /root/start.sh

ENTRYPOINT /root/start.sh
