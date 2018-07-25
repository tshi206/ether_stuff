pragma solidity ^0.4.24;

// TODO: TUT UP TO 3, NEXT START: 4

interface Regulator {
    function checkValue(uint amount) external returns (bool);
    function loan() external  returns (bool);
}

contract Bank is Regulator {

    address private owner;

    modifier ownerFunc {
        require(owner == msg.sender);
        _; // placeholder for our functions being modifier by this ownerFunc modifier
        // this is basically saying the modifier's callback ( require(...) in this case ) will always be fired before
        // executing the decorated function.
        // In another word, make sure the modifier is always checked first before our decorated functions ever execute
    }
    
    // internal => protected
    uint internal someInt;
    
    uint private value;
    
    constructor(uint amount) public {
        value = amount;
        owner = msg.sender;
    }
    
    function deposit(uint amount) internal ownerFunc {
        value += amount;
    }
    
    function withdraw(uint amount) internal ownerFunc {
        if (checkValue(amount)) {
            value -= amount;
        }
    }
    
    function balance() public view returns (uint)  {
        return value;
    }
    
    // this is effectively an abstract method, there is no dedicated keyword for 'abstract' in solidity
    function givemeabool() public returns(bool);
    
    function checkValue(uint amount) public returns (bool){
        return amount <= value;
    }
    
    function loan() public returns (bool) {
        return value > 0;
    }
    
}

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

contract TestThrows {

    function testAssert() {
        assert(1 == 2);
    }

    function testRequire() {
        require(2 == 1);
    }

    function testRevert() {
        revert();
    }

    function testThrow() {
        throw;
    }

}