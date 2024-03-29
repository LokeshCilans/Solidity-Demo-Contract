// There are 3 types of variables in Solidity

//1- local
// declared inside a function
// not stored on the blockchain

// 2- state
// declared outside a function
// stored on the blockchain

// 3- global (provides information about the blockchain)

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Variables {
    // State variables are stored on the blockchain.
    string public text = "Jay Shree Ram";
    uint public num = 123;

    function doSomething() public {
        // Local variables are not saved to the blockchain.
        uint i = 456;

        // Here are some global variables
        uint timestamp = block.timestamp; // Current block timestamp
        address sender = msg.sender; // address of the caller
    }
}
