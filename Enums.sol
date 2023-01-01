pragma solidity 0.8.7;

contract categorias{
    enum ESTADO={ATIVO, INATIVO, CADASTRADO, CANSELADO};
    mapping(address => ESTADO) usuarios;

    function addUsuarios() external {
        usuarios[msg.sender].ESTADO.INATIVO;
    }
}