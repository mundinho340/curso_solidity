pragma solidity 0.8.7;


contract fallbackexemple{
    uint public result;

    receive() external payable{
        result += 1;
    }
}