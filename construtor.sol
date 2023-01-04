pragma solidity 0.8.7;


contract construtor{
    uint _totalSupply;
    uint _decimals;
    address admin;


    constructor(uint initialSupply){
        _decimals =18;
        admin = msg.sender;
        _totalSupply=initialSupply;
    }

    function getSupply() external view returns(uint){
        return _totalSupply;
    }
}