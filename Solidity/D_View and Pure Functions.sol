// View function declares that no state will be changed.
// Pure function declares that no state variable will be changed or read.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract ViewAndPure {
    // Declare a public state variable
    uint public x = 1;

    // Function addToX: View function that promises not to modify the state.
    function addToX(uint y) public view returns (uint) {
        // Return the result of adding y to the state variable x
        return x + y;
    }

    // Function add: Pure function that promises not to modify or read from the state.
    function add(uint i, uint j) public pure returns (uint) {
        // Return the result of adding i and j without interacting with the state
        return i + j;
    }
}


