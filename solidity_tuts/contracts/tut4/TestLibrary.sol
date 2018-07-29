pragma solidity ^0.4.24;

import "./library.sol";



contract TestLibrary {

    using IntExtended for uint;

    function testIncrement(uint _base) returns (uint) {
        return _base.increment();
    }

    function testDecrement(uint _base) returns (uint) {
        return _base.decrement();
    }

    function testIncrementStatic(uint _base) returns (uint) {
        return IntExtended.increment(_base);
    }

    function testDecrementStatic(uint _base) returns (uint) {
        return IntExtended.decrement(_base);
    }

    function testIncrementByValue(uint _base, uint value) returns (uint) {
        return _base.incrementByValue(value);
    }

    function testDecrementByValue(uint _base, uint value) returns (uint) {
        return _base.decrementByValue(value);
    }

}
