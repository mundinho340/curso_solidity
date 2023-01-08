pragma solidity 0.8.7;

contract typeCast{
    function change(address _address) external pure returns(uint160){
        return uint160(_address);
    }

      function convertToByte20(address _address) external pure returns(bytes20){
        return bytes20(_address);
    }

    function convertToByte4(address _address) external pure returns(bytes4){
        return bytes4(bytes20(_address));
    }

    function convertToByte32(address _address) external pure returns(bytes32){
        return bytes32(bytes20(_address));
    }
}


