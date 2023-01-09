pragma solidity 0.8.7;


contract A{
    function transfer(address ) external pure returns(bytes memory){
        return msg.data;
    }


    function returnB(string memory s) external pure returns(bytes memory){
        return bytes(s);
    }

     function byt4(string memory s) external pure returns(bytes4){
        return bytes4(keccak256(bytes(s)));
    }

     function hash(string memory s) external pure returns(bytes32){
        return bytes32(keccak256(bytes(s)));
    }

     function encode(string memory x, string memory y) external pure returns(bytes memory){
        return abi.encode(x,y);
    }

    
    function encodePack(string memory x, string memory y) external pure returns(bytes memory){
        return abi.encodePacked(x,y);
    }
}