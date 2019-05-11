//this file name starts with a number because this is how truffle framework
// knows the order to execute them

var Election = artifacts.require("./Election.sol");

module.exports = function(deployer) {
  deployer.deploy(Election);
}
