pragma solidity 0.8.7;


contract A{
    function transfer(address ) external pure returns(bytes memory){
        return msg.data;
    }


    function returnB(string memory s) external pure returns(bytes memory){
        return bytes(s);
    }
}