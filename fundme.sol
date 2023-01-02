
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

//import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";
//import "./PriceConverter.sol";


interface AggregatorV3Interface {
  function decimals() external view returns (uint8);

  function description() external view returns (string memory);

  function version() external view returns (uint256);
  
  function getRoundData(uint80 _roundId)
    external
    view
    returns (
      uint80 roundId,
      int256 answer,
      uint256 startedAt,
      uint256 updatedAt,
      uint80 answeredInRound
    );

  function latestRoundData()
    external
    view
    returns (
      uint80 roundId,
      int256 answer,
      uint256 startedAt,
      uint256 updatedAt,
      uint80 answeredInRound
    );
}

contract FundMe {
    //using PriceConverter for uint256;

    mapping(address => uint256) public addressToAmountFunded;
    address[] public funders;

    // Could we make this constant?  /* hint: no! We should make it immutable! */
    address public /* immutable */ i_owner;
    uint256 public constant MINIMUM_USD = 50 * 10 ** 18;
    
    constructor() {
        i_owner = msg.sender;
    }

    function fund() public payable {
        //require(msg.value.getConversionRate() >= MINIMUM_USD, "You need to spend more ETH!");
        // require(PriceConverter.getConversionRate(msg.value) >= MINIMUM_USD, "You need to spend more ETH!");
        //addressToAmountFunded[msg.sender] += msg.value;
       // funders.push(msg.sender);
       require(msg.value >= MINIMUM_USD, "Didn't send enough!"); 
       // 18  decimals     
                
    }

    function getPrice()  public view returns(uint256) {
        //ABI
        //Address 
        //AggregatorV3Interface(0x5B38Da6a701c568545dCfcB03FcB875f56beddC4);
        AggregatorV3Interface priceFeed =AggregatorV3Interface(0x5B38Da6a701c568545dCfcB03FcB875f56beddC4);
        (, int price,,,) =priceFeed.latestRoundData();
        // ETH in terms of USD
        // 3000.0000000

          return uint256(price * 1e10); //1**10 == 1000000000 
    }

    
    function getVersion() public view returns (uint256){
        // ETH/USD price feed address of Goerli Network.
        AggregatorV3Interface priceFeed = AggregatorV3Interface(0xD4a33860578De61DBAbDc8BFdb98FD742fA7028e);
        return priceFeed.version();
    }

        function gertConversionRate() public {}

    
    

}

// Concepts we didn't cover yet (will cover in later sections)
// 1. Enum
// 2. Events
// 3. Try / Catch
// 4. Function Selector
// 5. abi.encode / decode
// 6. Hash with keccak256
