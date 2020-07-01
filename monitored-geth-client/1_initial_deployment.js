const DoubleAuction = artifacts.require("DoubleAuction");
const HelloWorld = artifacts.require("HelloWorld");

module.exports = function(deployer) {
  deployer.deploy(DoubleAuction);
  deployer.deploy(HelloWorld);
}
