pragma solidity 0.8.7;

contract marketPlace{
    struct Usuarios{
        address wallet;
        uint id;
        string nome;
    }
    Usuarios [] public usuarios;
    function addUsuarioImplicito(uint _id, string memory _nome) external{
        Usuarios memory usuario1= Usuarios(msg.sender, _id, _nome);
        usuarios.push(usuario1);

    }

    function addUsuarioExplicito(uint _id , string memory nome)external{
        Usuarios usuario2= Usuarios({wallet: msg.sender, id:_id, nome: _nome})
    }


}
