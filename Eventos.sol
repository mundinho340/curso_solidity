pragma solidity 0.8.7;

contract teste{
    event Transferencia(address origem, address destino, uint256 quantidade);

    function tranfer(address _destino, uint256 _quantidade) public {


        emit Transferencia(msg.sender, _destino, _quantidade);
    }
}

