// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "@openzeppelin/contracts@4.9.6/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts@4.9.6/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts@4.9.6/token/ERC20/extensions/ERC20Pausable.sol";
import "@openzeppelin/contracts@4.9.6/access/Ownable.sol";

contract ERC20Token is ERC20, ERC20Burnable, ERC20Pausable, Ownable {
    constructor() ERC20("BEAM", "beam") Ownable() {}

    function pause() public onlyOwner {
        _pause();
    }

    function unpause() public onlyOwner {
        _unpause();
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

     function _beforeTokenTransfer(address from, address to, uint256 amount)
        internal
        whenNotPaused
        override(ERC20, ERC20Pausable)
    {
        super._beforeTokenTransfer(from, to, amount);
    }
}
