// SPDX-License-Identifier: MIT

pragma solidity ^0.8.12;

contract Calculator {

    function add(uint _a, uint _b) public pure returns(uint) {
        return (_a+_b);
    }

    function subtract (int _a, int _b) public pure returns(int) {
        return (_a - _b); // we can get -ve result also 
    }

    function multiply (uint _a, uint _b) public pure returns(uint) {
        return (_a*_b);
    }

    function division (uint _a, uint _b) public pure returns(uint) {
        return (_a/_b);
    }

    function getremainder (uint _a, uint _b) public pure returns(uint) {
        return (_a%_b);
    }

    function exponential (uint _a, uint _power) public pure returns(uint) {
        return (_a**_power);
    }
}
