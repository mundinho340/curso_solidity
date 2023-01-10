
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

//import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";
import "./PriceConverter.sol";


contract FundMe {
    using PriceConverter for uint256;
    mapping(address => uint256) public addressToAmountFunded;
    address[] public funders;
    error notOwner();

    // Could we make this constant?  /* hint: no! We should make it immutable! */
    address public  immutable i_owner;
    //	21.508 -> immutable
    //  23.644 -> non-immutable
     uint256 public  MINIMUM_USD = 50 * 1e8;
    // 23,000 -> non-constant
    // 21,438 -> constant 
    // 21,438 * 25000000000 =535.950.000.000.000

   // address public  owners;

    constructor(){
        i_owner= msg.sender;
    }

    function fund() public payable {
        //require(msg.value.getConversionRate() >= MINIMUM_USD, "You need to spend more ETH!");
        // require(PriceConverter.getConversionRate(msg.value) >= MINIMUM_USD, "You need to spend more ETH!");
        addressToAmountFunded[msg.sender] += msg.value;
        funders.push(msg.sender);
        require(msg.value.getConversionRate()>= MINIMUM_USD, "Didn't send enough!"); 
       // 18  decimals     
                
    }

    function withdraw() public {
         /* starting index, ending index, stop amount*/ 
        for(uint256 funderIndex; funderIndex<funders.length ; funderIndex++){
            //code
            address funder = funders[funderIndex];
            addressToAmountFunded[funder]=0;
        }
        // reset th e array
        funders = new address[](0); 
        // actually withdraw the funds
        // call
        (bool callSuccess, )=payable(msg.sender).call{value: address(this).balance}("");
        require(callSuccess, "call failed");
    }

    modifier onlOwner(){
        //require(msg.sender == i_owner, "file user not owner");
        if(msg.sender != i_owner){revert notOwner();}
        _;
    }

    receive() external payable{
        fund();
    }

    fallback() external payable{
        fund();
    }

}

// what happenies if someone sends this contract ETH without calling fund function

// Concepts we didn't cover yet (will cover in later sections)
// 1. Enum
// 2. Events
// 3. Try / Catch
// 4. Function Selector
// 5. abi.encode / decode
// 6. Hash with keccak256

// i completed course basic is solidity