require("@nomicfoundation/hardhat-toolbox");
require("dontenv").config();
/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  solidity: "0.8.9",
  networks: {
    rinkeby: {
      url: "https://eth-rinkeby.gateway.pokt.network/v1/lb/631f0932028aa7003c945d7e",
      accounts: [],
    },
  },
};
