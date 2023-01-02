pragma solidity 0.8.7;

contract Armazenamento{

    string qualquerNumero;

    function lerNumero() public returns (strig memory){
        return qualquerNumero;
    }

    function guardarNumero(string memory _texto) public {
        qualquerNumero=_texto;
        //_texto = "outra coisa";
        uint qualquerNumero =10;
    }
}