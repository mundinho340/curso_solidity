pragma solidity 0.8.7;

/*contract Visibilidade{
    string private nome;

    function salvaNome(string memory _nome) external{
        nome = _nome;
    }

    function visualizar() external view returns(string memory){
        return nome;
    }
}*/


contract Visibilidade{
    string internal nome;

    function salvaNome(string memory _nome) external{
        nome = _nome;
    }

    function visualizar() internal view returns(string memory){
        return nome;
    }
}

contract ver is Visibilidade{
    function mostre() external view returns(string memory){
        return visualizar();
    }
}