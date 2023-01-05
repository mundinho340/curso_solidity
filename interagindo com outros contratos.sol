pragma solidity 0.8.7;


contract A{
    function retorna10() external pure returns(uint256){
        return 10;
    }
}

contract B{
    function retorna5() external pure returns(uint256){
        return 5;
    }
}


contract C {
    function chamada(address _endereco) external returns(uint256){
        return A(_endereco).retorna10();
    }
}

