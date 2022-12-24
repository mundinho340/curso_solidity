pragma solidity 0.8.8;


contract Foundme{
    uint256 number;
    function found() public payable{
        number=5;
        require(msg.value > 1e18, "didn't send enough");
    }
}