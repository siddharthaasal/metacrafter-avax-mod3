// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyToken {
    string public tokenName;
    string public tokenSymbol;
    uint256 public totalSupply;
    address public owner;
    mapping(address => uint256) public balances;

    constructor(
        string memory _tokenName,
        string memory _tokenSymbol,
        uint256 _initialTokenSupply
    ) {
        tokenName = _tokenName;
        tokenSymbol = _tokenSymbol;
        totalSupply = _initialTokenSupply;
        balances[msg.sender] = _initialTokenSupply;
        owner = msg.sender;
    }

    function mint_tokens(address account_address, uint256 amount) external {
        require(msg.sender == owner, "Only Owner can mint tokens");
        balances[account_address] += amount;
        totalSupply += amount;
    }

    function burn_tokens(uint256 amount) external {
        require(balances[msg.sender] >= amount, "Insufficient balance");
        balances[msg.sender] -= amount;
        totalSupply -= amount;
    }

    function transfer_tokens(
        address receiver_address,
        uint256 amount
    ) external {
        require(balances[msg.sender] >= amount, "Insufficient balance");
        balances[msg.sender] -= amount;
        balances[receiver_address] += amount;
    }
}
