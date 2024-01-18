// Variables are declared as either storage, memory or calldata to explicitly specify the location of the data.

// storage - variable is a state variable (store on blockchain)
// memory - variable is in memory and it exists while a function is being called
// calldata - special data location that contains function arguments

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract DataLocations {
    // Declare a public dynamic array
    uint[] public arr;

    // Declare a mapping from uint to address
    mapping(uint => address) map;

    // Declare a struct named MyStruct with a single uint field
    struct MyStruct {
        uint foo;
    }

    // Declare a mapping from uint to MyStruct
    mapping(uint => MyStruct) myStructs;

    // Main function
    function f() public {
        // Call the internal function _f with state variables
        _f(arr, map, myStructs[1]);

        // Get a struct from a mapping and assign it to a storage variable
        MyStruct storage myStruct = myStructs[1];

        // Create a struct in memory and assign it to a memory variable
        MyStruct memory myMemStruct = MyStruct(0);
    }

    // Internal function that takes storage variables
    function _f(
        uint[] storage _arr,
        mapping(uint => address) storage _map,
        MyStruct storage _myStruct
    ) internal {
        // Do something with storage variables
        // (Note: Modifying storage variables directly in internal functions is common)
    }

    // Function that takes and returns a memory array
    function g(uint[] memory _arr) public returns (uint[] memory) {
        // Do something with memory array
        return _arr;
    }

    // Function that takes a calldata array
    function h(uint[] calldata _arr) external {
        // Do something with calldata array
        // (Note: Calldata is read-only in functions external to the current contract)
    }
}
