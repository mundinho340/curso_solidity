pragma solidity 0.8.7;


contract A{
    bool public fallbackCalled;
    fallback() external payable{
        fallbackCalled= true;
    }
}

contract B{
    function transfer(address _contract, uint256 _var) external payable{
        (bool success,)= _contract.call("");
        require(success, "call filed");
    }

    receive() external payable{}

    function senEther() external{
        (bool success, )= msg.sender.call{value: 1 ether}("");
    }
}
//function recive-> receive() external payable{}
