pragma solidity ^0.4.0;

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