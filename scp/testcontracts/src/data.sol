// SPDX-Licence-Identifier: MIT
pragma solidity ^0.8.7;

// Data types - values and references

contract ValueTypes 
{
    bool public b = true;
    uint public u = 123; // uint = uint 256 0 to 2**256 - 1
    int public i = -123; // int = int 256    -2**255 to 2*255 -1

    int public minInt = type(int).min;
    int public maxInt = type(int).max;
    address public addr = 0xC02aaA39b223FE8D0A0e5C4F27eAD9083C756Cc2;
    bytes32 public b32 = 0x7465737400000000000000000000000000000000000000000000000000000000;
}

