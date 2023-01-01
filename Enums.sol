pragma solidity 0.8.7;


contract categorias{
    enum ESTADO{ATIVO, INATIVO, CANCELADO, CADASTRADO}
    mapping(address => ESTADO) usuarios;

    function addUsers() external{
        usuarios[msg.sender] = ESTADO.CADASTRADO;
    }

    function viewUser() external view returns (ESTADO){
        return usuarios[msg.sender];
    }

    function calcula(uint _a, uint _b) external returns(uint){
        require(usuarios[msg.sender] == ESTADO.CADASTRADO, "Erro usuario nao esta cadastrado");

        uint resultado = _a+_b;
        return resultado;
    }
}