// boolean
// uint256
// int256
// address

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DataTypesExample {
    // Boolean variable
    bool public isTrue = true;

    // Unsigned integer variable (uint256)
    uint256 public unsignedNumber = 42;

    // Signed integer variable (int256)
    int256 public signedNumber = -10;

    // Ethereum address variable
    address public owner;

    // Constructor to set the contract owner
    constructor() {
        owner = msg.sender;
    }

    // Function to check if the caller is the owner
    function isOwner() public view returns (bool) {
        return msg.sender == owner;
    }
}
