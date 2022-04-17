// SPDX-License-Identifier: MIT
pragma solidity ^0.8.12;

contract BasicDataTypes {
    //check default values
    bool public a;
    uint public posnum;
    int public num;
    address public adrs;//address are 20 byte(160 bits or 40 hex) characters
    bytes public bts;
    string public str;

    //store some values in variables
    bool public havebal = true;
    string public name = "Ishwar Singh Naruka";
    uint public num1 = 89;
    int public num2 = -14;
    address public ad = msg.sender;
    bytes public btrs = "Ishwar";//see hex tables at https://www.rapidtables.com/code/text/ascii-table.html

    //Range of integers
    int public minintval = type(int).min;
    int public maxintval = type(int).max;
    uint public minuintval = type(uint).min;
    uint public maxuintval = type(uint).max;

}
