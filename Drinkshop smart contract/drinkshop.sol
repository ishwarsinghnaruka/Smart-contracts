// SPDX-License-Identifier: MIT
pragma solidity ^0.8.11;

contract DrinkShop {
    address public drinkshopowner;
    mapping (address => uint256) public drinkLiterBalance;

    constructor() {
        drinkshopowner = msg.sender;
        drinkLiterBalance[address(this)] = 100;
    }

    function getDrinkShopBalance() public view returns (uint256) {
        return drinkLiterBalance[address(this)];
    }

    function AddDrinks(uint256 liter) public {
        require(msg.sender == drinkshopowner,"Shop owner can add drink to the machine");
        drinkLiterBalance[address(this)] += liter;
    }

    function purchase(uint liter) public payable {
        require(msg.value >= liter * 1 ether, "Price is 1 ether per liter drink");
        require(drinkLiterBalance[address(this)] >= liter, "drinks not available");
        drinkLiterBalance[address(this)] -= liter;
        drinkLiterBalance[msg.sender] += liter;
    }
}
