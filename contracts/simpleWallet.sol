// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract SimpleWallet {
    // State variable to store the owner's address
    address public owner;

    // TODO: Add a modifier named `onlyOwner`
    //? Hint: The modifier should check if `msg.sender` is the owner and revert if not.
    //? Hint: Use `require` to check the condition and include an error message for clarity.
    // ...

    // Constructor to set the deployer as the owner
    constructor() {
        // TODO: Initialize the `owner` state variable with the address of the deployer
        //? Hint: Use `msg.sender` to get the address of the contract deployer.
        // ...


        //! Require owner must not be the zero address (DO NOT CHANGES)
        require(owner != address(0), "Invalid owner address");
    }

    // Function to deposit ether into the contract
    function deposit() public payable {
        //? TODO: What happens when this function is called? Think about the `payable` keyword.
        //? Hint: The `payable` keyword allows the function to receive ether.
        //? Hint: When ether is sent to this function, it automatically increases the contract's balance.
        //? Hint: You do not need to add any code inside the function body for the ether to be deposited.
        //? Question: How can we track who sent ether to the contract? (Consider event logging.)
    }

    // Function to withdraw ether from the contract
    // TODO: Use the `onlyOwner` modifier to restrict this function
    function withdraw(uint256 amount) public {
        //? Hint: This function should allow withdrawal only if the caller is the owner.
        // TODO: Add logic to transfer the specified amount of ether to the owner's address
        //? Hint: Use `payable(owner).transfer(amount);` to transfer ether.
        //? Hint: Ensure there's enough balance in the contract before performing the transfer.
        // ...
    }

    // Function to check the balance of the contract
    function getBalance() public view returns (uint256) {
        // TODO: Return the balance of the contract
        //? Hint: Use `address(this).balance` to get the contract's balance.
        //? Question: Why does this function have the `view` keyword?
        // ...
    }
}
