pragma solidity 0.8.7;


contract fallbackexemple{
    uint public result;

    receive() external payable{
        result = 1;
    }

    fallback() external payable{
        result =2;
    }

    // used 0x00 on trasection for call the fallback;
}