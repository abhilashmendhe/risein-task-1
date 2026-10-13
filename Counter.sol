// SPDX-License-Identifier: MIT
pragma solidity ^0.8.31;

contract Exmaple {

    address owner;

    struct Counter {
        uint number;
        string description;
    }

    Counter counter;
    modifier onlyOwner() {
        require(msg.sender == owner, "Only owner can increment or decrement the counter");
        _;
    }

    constructor (uint initialValue, string memory description) {
        owner = msg.sender;
        counter = Counter(initialValue, description);
    }

    function increment_counter() external onlyOwner {
        counter.number += 1;
    }

    function decrement_counter() external onlyOwner {
        counter.number -= 1;
    }

    function get_counter() external  view returns(uint) {
        return counter.number;
    }

    function get_description() external  view returns(string memory) {
        return counter.description;
    }

}
