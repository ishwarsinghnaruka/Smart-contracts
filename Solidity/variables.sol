// SPDX-License-Identifier: MIT
pragma solidity ^0.8.12;

contract StateLocalGlobalVars {

    //state variables are stored on blockchain and cost more gas
    
    uint public age = 45;
    string public name = "Ishwar Singh Naruka";
    
    //Global variables - these are not created, available to use anywhere
    
    address public adrs = msg.sender;
    address public miner = block.coinbase;

    function incAge(uint _a) public returns (uint, uint, uint, uint){
        //arguments or parameters are also local variables
        //these are not stored on blockchains and always created inside function, destroyed after function execution
        
        age +=1;
        uint a = _a;

        //Global variables inside functions
        
        uint diff = block.difficulty;
        uint timestamp = block.timestamp;

        return (age, a, diff, timestamp);
    }
}
