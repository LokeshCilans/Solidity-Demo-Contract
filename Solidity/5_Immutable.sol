// Immutable
// Immutable variables are like constants. Values of immutable variables can be set inside the constructor but cannot be modified afterwards.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Immutable {
    // Declare two immutable state variables with public visibility
    // coding convention to uppercase constant variables
    address public immutable MY_ADDRESS;
    uint public immutable MY_UINT;

    // Constructor that initializes the immutable variables
    constructor(uint _myUint) {
        // Set the MY_ADDRESS to the address of the contract deployer (msg.sender)
        MY_ADDRESS = msg.sender;

        // Set the MY_UINT to the provided input parameter _myUint
        MY_UINT = _myUint;
    }
}
