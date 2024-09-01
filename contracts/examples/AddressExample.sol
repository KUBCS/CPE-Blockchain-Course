// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract AddressExample {
    // State variable to store an address
    address public owner;

    // Constructor to set the owner address
    constructor() {
        owner = msg.sender; // Set the deployer of the contract as the owner
    }

    // Function to send ether to a specific address
    function sendEther(address payable _to) public payable {
        require(msg.sender == owner, "Only the owner can send ether.");
        require(msg.value > 0, "Must send some ether.");
        _to.transfer(msg.value); // Transfer the sent ether to the specified address
    }

    // Function to get the balance of the contract
    function getBalance() public view returns (uint256) {
        return address(this).balance; // Return the contract's ether balance
    }
}
