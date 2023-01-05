pragma solidity 0.8.7;
//import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/IERC20.sol";

import "./InterfaceBalanceOf.sol"
contract A{
    address _contract;
    IERC20 myInstance;

    contructor(address contracto){
        //_contract = contracto;
        myInstance =IERC20(contracto);
    }

   function getSaldo(address _contrato) external view returns(uint256){
    return balanceOfInterface(-contracto).balanceOf(msg.sender);
   }

   function getSaldo() external view returns(uint256){
    return myInstance.balanceOf(msg.sender);
   }

}



