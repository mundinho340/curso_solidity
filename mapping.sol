pragma solidity 0.8.7;


contract mappings{
    mapping(address => uint )=> saldos;

    function deposit() external payable{
        saldos[msg.sender] = msg.value;
    }
}