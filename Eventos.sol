pragma solidity 0.8.7;

contract Eventos{
    event Transferencia(address _deque, address _paraonde, uint256 _quantidade);

    function trasfer(address indexed _praque, uint256 indexed _quantidade) public {
        //codigos das verificacoes

        emit Transferencia(msg.sender, _praque, _quantidade);
    }
}