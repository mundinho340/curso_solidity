pragma solidity 0.8.7;

contract controladores{
    address[] addresses;

    function endereco(address _address) external {
        addresses.push(_address);
    }

    function validar(address _address) external view returns (bool){
        for(uint i; i< addresses.length;i++){
            if(addresses[i] == _address){
                return true;
            }
        }
        return false;
    }
}