for(var i = 0; i < 10; i++){
eth.sendTransaction({from: eth.coinbase, to: '0x99429f64cf4d5837620dcc293c1a537d58729b68', value: web3.toWei(1,'ether')});
}
