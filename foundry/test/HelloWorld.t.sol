// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/HelloWorld.sol";

contract HelloWorldTest is Test 
{
    HelloWorld public helloWord;

    function setUp() public 
    {
        helloWord = new HelloWorld();
    }

    function testGreet() public
    {
        assertEq(helloWord.greet(), "Hello World!");
    }
}
