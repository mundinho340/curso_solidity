pragma solidity 0.8.7;


contract A{
   uint256 public a;

   function setVar(address _contract,uint256 _var) external{
       a =_var;
   }
}

contract B{
    uint256 public a;

    function setVar(address _contract , uint256 _var) external{
        (bool success,)= _contract.delegatecall(abi.encodeWithSignature("setVar(address,uint256)", _contract, _var));
        require(success, "delegatecall file");
    }
}
//function recive-> receive() external payable{}
 