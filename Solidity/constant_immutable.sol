// SPDX-License-Identifier: MIT
pragma solidity ^0.8.12;

contract ImmutableConstant {

    //constant and immutable variables cannot be modifies
    //immutable cost slightly more gas than constant
    // we can initlialize immutable inline and through constructor 
    // but constant are only initliazed inline
    address public immutable adrs = msg.sender;
    address public constant addrs = 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2;

    uint public immutable b;

    constructor() {
        b = 5;
    }
}
