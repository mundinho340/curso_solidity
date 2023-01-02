pragma solidity 0.8.7;

contract Eventos{
    event Transferencia(address _deque, address _paraonde, uint256 _quantidade);

    function trasfer(address _paraonde, uint256 _quantidade) public {
        //codigos das verificacoes

        emit Transferencia(msg.sender, _paraque, _quantidade);
    }
}