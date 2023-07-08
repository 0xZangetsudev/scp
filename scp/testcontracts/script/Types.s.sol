// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.7;

import "forge-std/Script.sol";
import "../src/data.sol";

contract MyScript is Script {
    function run() external {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);

        ValueTypes tract = new ValueTypes();

        console2.logInt(tract.i());
        console2.logInt(tract.maxInt());
        console2.logUint(tract.u());

        vm.stopBroadcast();
    }
}

