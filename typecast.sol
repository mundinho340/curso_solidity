pragma solidity 0.8.7;

contract typeCast{
    function change(address _address) external pure returns(uint160){
        return uint160(_address);
    }
}


