pragma solidity 0.8.7;


contract mappings{
    mapping(address => uint ) saldos;

    //depositar
    function deposit() external payable{
        saldos[msg.sender] += msg.value;
    }

    //consultar saldo
    function balanceOf() external view returns(uint256){
        return saldos[msg.sender];
    }
}