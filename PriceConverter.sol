// SPDX-License-Identifier: MIT

pragma solidity 0.8.7;

import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

library PriceConverter{
    function getPrice()  internal view returns(uint256) {
        //ABI
        //Address 
        //AggregatorV3Interface(0x5B38Da6a701c568545dCfcB03FcB875f56beddC4);
        AggregatorV3Interface priceFeed =AggregatorV3Interface(0x5B38Da6a701c568545dCfcB03FcB875f56beddC4);
        (, int price,,,) =priceFeed.latestRoundData();
        // ETH in terms of USD
        // 3000.0000000

          return uint256(price * 1e10); //1**10 == 1000000000 
    }

    
    function getVersion() internal view returns (uint256){
        // ETH/USD price feed address of Goerli Network.
        AggregatorV3Interface priceFeed = AggregatorV3Interface(0xD4a33860578De61DBAbDc8BFdb98FD742fA7028e);
        return priceFeed.version();
    }

    function getConversionRate(uint256 ethAmount) internal view returns(uint256) {
        uint256 ethPrice = getPrice();
        //3000_000000000000000000 =ETH / USD price
        //1_000000000000000000

        uint256 ethAmountInUsd =(ethPrice* ethAmount)/ 1e18;
        //2.999e21

        return ethAmountInUsd;
    }
}