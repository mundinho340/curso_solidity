pragma solidity 0.8.7;

contract lista{
    string[] nome;
    //colocar nome na lista
    function addName(string memory _nome) external {
        nome.push(_nome);
    }

    //visualizar nome na lista
    function viewName(uint position) external view returns(string memory){
        return nome[position];
    }

    //atualiar nome na lista
    function updateName(string memory _nome, uint _position) external{
        nome[_position] = _nome;
    }

    //deletar nome na lista
    function deleteName(string memory _nome, uint _position) external{
        delete nome[_position];
    }
}