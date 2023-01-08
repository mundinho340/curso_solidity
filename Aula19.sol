pragma solidity 0.8.7;


contract A{
    uint public a;
    function setVar(uint _var) external{
        a=_var;
    }
}

contract B{
    function testCall(address _contract, uint _var) external{
        (bool success,)=_contract.call(abi.encodeWithSignature("setVar(uint256)", _var));
        require(success, "call failed");
    }
}
//function recive-> receive() external payable{}
