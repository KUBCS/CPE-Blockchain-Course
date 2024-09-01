// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract MappingExample {
    // Mapping to store balances of different addresses
    mapping(address => uint256) private balances;

    // Function to set the balance of an address
    function setBalance(address _address, uint256 _balance) public {
        balances[_address] = _balance;
    }

    // Function to get the balance of an address
    function getBalance(address _address) public view returns (uint256) {
        return balances[_address];
    }

    // Function to check if an address has a non-zero balance
    function hasBalance(address _address) public view returns (bool) {
        return balances[_address] > 0;
    }
}
