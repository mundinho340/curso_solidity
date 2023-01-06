pragma solidity 0.8.0;


contract safeMathTester{
    uint8 public bignumber=255;//checked

    function add()public{
        unchecked{bignumber=bignumber+1;}
    }
}