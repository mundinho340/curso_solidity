pragma solidity 0.8.7;

contract categorias{
   enum ESTADO{ATIVO, INATIVO, CANSELADO, CADASTRADO}
   mapping(address => ESTADO) usuarios;

   function addUser() external{
       usuarios[msg.sender]=ESTADO.INATIVO;
   }
}