pragma solidity 0.8.7;


contract listas{
    string[] nome;

    function salvarNome (string memory _nome ) external{
        nome.push(_nome);
    }

    function visualizarNome() external view returns(string memory){
        return nome[];
    }
}