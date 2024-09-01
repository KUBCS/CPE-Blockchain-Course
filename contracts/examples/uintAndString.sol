// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract UintAndStringExample {
    // State variable to store a number
    uint256 public number;

    // State variable to store a text
    string public text;

    // Function to set the number
    function setNumber(uint256 _number) public {
        number = _number;
    }

    // Function to set the text
    function setText(string memory _text) public {
        text = _text;
    }

    // Function to get the number
    function getNumber() public view returns (uint256) {
        return number;
    }

    // Function to get the text
    function getText() public view returns (string memory) {
        return text;
    }
}
