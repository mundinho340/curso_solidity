pragma solidity ^0.8.7;

contract SimpleStorage{

    

    struct People{
        string name;
        uint256 favoriteNumber;
    }

    People[] public people;

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        People memory newPerson = People({name: _name, favoriteNumber: _favoriteNumber});
        people.push(newPerson);
    
    }
}