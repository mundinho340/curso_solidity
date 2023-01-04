pragma solidity 0.8.7;

contract pagaveis{
    function pagamento() external returns(bool){
        require(msg.value>= 1 ether,"valor nao enviado por ser inferior a 1 ether");
        return true;
    }

    
    function balance() external view returns(uint){
        return address(this).balance;
    }
}