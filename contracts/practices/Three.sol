// SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.8.27;

contract SimpleToken {
    // Token variables
    string public name;
    string public symbol;

    uint8 public constant decimals = 18;
    uint256 public totalSupply;

    // Balances for each account
    mapping(address => uint256) public balanceOf;

    // Allowances for delegated spending
    mapping(address => mapping(address => uint256)) public allowance;

    // Events for transfer and approval
    event Transfer(address indexed from, address indexed to, uint256 value);
    event Approval(
        address indexed owner,
        address indexed spender,
        uint256 value
    );

    // Constructor that sets the initial name, symbol, supply
    constructor(
        string memory initialName, // ex: "SimpleToken"
        string memory initialSymbol, // ex: "STK"
        uint256 initialSupply // ex: 100 => 100 tokens
    ) {
        name = initialName;
        symbol = initialSymbol;
        totalSupply = initialSupply * 10 ** uint256(decimals); // Adjust based on decimals
        balanceOf[msg.sender] = totalSupply; // Assign all tokens to the contract creator
    }

    // Transfer function to send tokens to another account
    function transfer(
        address _to,
        uint256 _value
    ) public returns (bool success) {
        // TODO //

        return true;
    }

    // Approve another address to spend tokens on your behalf
    function approve(
        address _spender,
        uint256 _value
    ) public returns (bool success) {
        // TODO //

        return true;
    }

    // Transfer tokens on behalf of the owner (for things like decentralized exchanges)
    function transferFrom(
        address _from,
        address _to,
        uint256 _value
    ) public returns (bool success) {
        // TODO //

        return true;
    }
}
