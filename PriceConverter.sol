pragma solidity 0.8.7;


contract modificadores{
    uint supply =10;
    address admin = msg.sender;

    function getSuppy() external view returns(uint){
        return supply;
    }
}