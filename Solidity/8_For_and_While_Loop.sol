// Solidity supports for, while, and do while loops.
// Don't write loops that are unbounded as this can hit the gas limit, causing your transaction to fail.
// For the reason above, while and do while loops are rarely used.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract LoopExample {
    function loop() public pure returns (uint256) {
        uint256 sumForLoop = 0;

        // For loop to calculate the sum of numbers from 1 to 5
        for (uint256 i = 1; i <= 5; i++) {
            sumForLoop += i; // Add the current value of i to the sum
        }

        uint256 sumWhileLoop = 0;
        uint256 j = 1;

        // While loop to calculate the sum of numbers from 1 to 5
        while (j <= 5) {
            sumWhileLoop += j; // Add the current value of j to the sum
            j++; // Increment j for the next iteration
        }

        // Return the sum calculated by both loops
        return sumForLoop + sumWhileLoop;
    }
}
