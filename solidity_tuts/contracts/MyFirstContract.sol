pragma solidity ^0.4.24;

import "./Bank.sol";


// inheritance can also combine with parent initialization
contract MyFirstContract is Bank(10) {
    
    // in Solidity modifiers come after type declaration
    string private name;
    uint private age;
    
    function setName(string newName) public  {
        someInt = 1;
        name = newName;
    }
    
    // public means public, view means readonly, pure means stateless
    // public pure means public stateless
    function getName() public view returns (string) {
        return name;
    }
    
    function setAge(uint newAge) public {
        age = newAge;
    }
    
    // returns in signature denotes return-type
    function getAge() public view returns (uint) {
        return age;
    }
    
    function givemeabool() public returns(bool) {
        return true;
    }
    
}
