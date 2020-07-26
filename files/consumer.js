for(var i = 0; i < 10; i++){
eth.sendTransaction({from: eth.coinbase, to: '0x007ccffb7916f37f7aeef05e8096ecfbe55afc2f', value: web3.toWei(1,'ether')});
}
