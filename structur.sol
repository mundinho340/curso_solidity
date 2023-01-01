pragma solidity 0.8.7;

contract marketPlace{
    struct Usuarios{
        address wallet;
        uint id;
        string nome;
    }
    Usuarios [] public usuarios;
    function addUsuario(uint _id, string memory _nome) external{
        Usuarios memory usuario1= Usuarios(msg.sender, _id, _nome);
        usuarios.push(usuario1);

    }


}
