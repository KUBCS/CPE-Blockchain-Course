// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract EventExample {
    // Event to log the deposit of ether
    event Deposit(address indexed from, uint256 amount);

    // Function to deposit ether into the contract
    function deposit() public payable {
        require(msg.value > 0, "Must send some ether.");
        emit Deposit(msg.sender, msg.value); // Emit the deposit event
    }

    // Function to get the balance of the contract
    function getBalance() public view returns (uint256) {
        return address(this).balance; // Return the contract's ether balance
    }
}
