// SPDX-License-Identifier: Apache-2.0
pragma solidity 0.8.19;

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
        address _from = msg.sender;

        require(balanceOf[_from] >= _value, "Caller insufficient balance.");

        uint256 _callerBalanceBefore = balanceOf[_from];
        uint256 _receiverBalanceBefore = balanceOf[_to];

        balanceOf[_from] -= _value;
        balanceOf[_to] += _value;

        uint256 _callerBalanceAfter = balanceOf[_from];
        uint256 _receiverBalanceAfter = balanceOf[_to];
        
        require(_callerBalanceAfter + _value == _callerBalanceBefore);
        require(_receiverBalanceAfter - _receiverBalanceBefore == _value);

        return true;
    }

    // Approve another address to spend tokens on your behalf
    function approve(
        address _spender,
        uint256 _value
    ) public returns (bool success) {
        allowance[msg.sender][_spender] = _value;
        return true;
    }

    // Transfer tokens on behalf of the owner (for things like decentralized exchanges)
    function transferFrom(
        address _from,
        address _to,
        uint256 _value
    ) public returns (bool success) {
        // TODO //

        address _caller = msg.sender;

        require(allowance[_from][_caller] >= _value,"Insufficient Allowance");
        require(balanceOf[_from] >= _value,"Insufficient Balance");

        allowance[_from][_caller] -= _value;
        balanceOf[_from] -= _value;
        balanceOf[_to] += _value;

        return true;
    }
}
