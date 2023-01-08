pragma solidity 0.8.7;


contract A{
   bool public fallbackCalled;
    fallback() external payable{
        fallbackCalled= true;
    }
}

contract B{
    function testCall(address _contract, uint _var) external{
        (bool success,)=_contract.call(abi.encodeWithSignature("setVar(uint256)", _var));
        require(success, "call failed");
    }
}
//function recive-> receive() external payable{}
/*ABI stands for "Application Binary Interface." In the context of Solidity, the ABI is a specification of how data is encoded and decoded when it is sent to or received from a smart contract on the Ethereum blockchain. The ABI is important because it allows external systems to interact with the smart contract, by specifying exactly how data should be formatted when it is passed to the smart contract and how the results of the contract's execution should be interpreted. The ABI is typically generated automatically from the Solidity code of the smart contract and is used by clients that want to call the contract's functions or read its state. */