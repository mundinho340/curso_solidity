pragma solidity 0.8.7;

contract ex01{
    string private name;

    function escreverNome(string memory _nome) external{
        name =_nome;
    }

    function verNome() internal view returns(string memory){
        return name;
    }

}

