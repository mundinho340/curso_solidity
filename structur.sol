pragma solidity 0.8.7;

contract marketPlace{
    struct Usuarios{
        address wallet;
        uint id;
        string nome;
    }
    Usuarios[] public usuarios;
    function addUserImplicito(uint _id, string memory _nome) external{
        Usuarios memory usuario1 = Usuarios(msg.sender,_id, _nome);
        usuarios.push(usuario1);
    }

    function addUserExplicit(uint _id, string memory _nome) external{
        Usuarios memory usuario2= Usuarios({wallet: msg.sender, id: _id, nome: _nome});
        usuarios.push(usuario2);
    }

    function addUserBarato(uint _id, string memory _nome) external{
        usuarios.push(Usuarios(msg.sender, _id, _nome));
    }

    function visualizar(uint _position) external view returns(string memory){
        return usuarios[_position].nome;
    }
} 