// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MyToken {

    // Public variables to store details about the coin
    string public name = "MyToken";
    string public symbol = "MTK";
    uint256 public totalSupply;

    // Mapping to store balances of addresses
    mapping(address => uint256) public balances;

    // Mint function to create new tokens
    function mint(address to, uint256 amount) public {
        totalSupply += amount;
        balances[to] += amount;
    }

    // Burn function to destroy tokens
    function burn(address from, uint256 amount) public {
        require(balances[from] >= amount, "Insufficient balance to burn");
        totalSupply -= amount;
        balances[from] -= amount;
    }
}
