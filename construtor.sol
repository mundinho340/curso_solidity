pragma solidity 0.8.7;


contract construtor{
    uint _totalSupply;
    uint _decimals;
    address admin;


    constructor(){
        _decimals =18;
        admin = msg.sender;
        _totalSupply=100;
    }
}