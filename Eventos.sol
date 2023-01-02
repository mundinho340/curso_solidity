pragma solidity 0.8.7;

contract teste{
    event Transferencia(address indexed origem, address indexed destino, uint256 quantidade);

    function tranfer(address _destino, uint256 _quantidade) public {


        emit Transferencia(msg.sender, _destino, _quantidade);
    }
}

