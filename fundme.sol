
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

//import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";
import "./PriceConverter.sol";


contract FundMe {
    using PriceConverter for uint256;
    mapping(address => uint256) public addressToAmountFunded;
    address[] public funders;

    // Could we make this constant?  /* hint: no! We should make it immutable! */
    address public /* immutable */ i_owner;
    uint256 public constant MINIMUM_USD = 50 * 10 ** 18;

    function fund() public payable {
        //require(msg.value.getConversionRate() >= MINIMUM_USD, "You need to spend more ETH!");
        // require(PriceConverter.getConversionRate(msg.value) >= MINIMUM_USD, "You need to spend more ETH!");
    addressToAmountFunded[msg.sender] += msg.value;
       funders.push(msg.sender);
       require(msg.value.conversionRate() >= MINIMUM_USD, "Didn't send enough!"); 
       // 18  decimals     
                
    }

    function withdraw() public {
        /* starting index, ending index, stop amount*/ 
        for(uint256 funderIndex; funderIndex<funders.length ; funderIndex++){
            //code
            address funder = funders[funderIndex];
            addressToAmountFunded[funder]=0;
        }
        // reset the array
        funders = new address[][0]; 
        // actually withdraw the funds
            // transfer
        // send
        // call

        // tranfer
        payable(msg.sender).tranfer(address(this).balance);
        // send
        // call
          // call
        (bool callSuccess, bytes dataReturned)=payable(msg.sender).call{value: address(this).balance}("");
    }

    

}

// Concepts we didn't cover yet (will cover in later sections)
// 1. Enum
// 2. Events
// 3. Try / Catch
// 4. Function Selector
// 5. abi.encode / decode
// 6. Hash with keccak256
