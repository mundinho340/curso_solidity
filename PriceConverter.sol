pragma solidity 0.8.7;


contract modificadores{
    uint supply =10;
    address admin = msg.sender;

    function getSuppy() external view returns(uint){
        return supply;
    }

    function mint(uint _valor) external onlyAdmin() somenteValor(_valor){
        suppy+= _valor;
    }

    modifier onlyAdmin(){
        require(msg.sender==admin,  "Nao eh o admin");

    }

    modifier somenteValor(uint _valor){
        require(_valor ==10, "erro");
    }
}