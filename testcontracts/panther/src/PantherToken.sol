// SPDX-License-Identifier: MIT
pragma solidity 0.6.12;

import "../lib/BEP20.sol";

import "@uniswap/v2-periphery/contracts/interfaces/IUniswapV2Router02.sol";
import "@uniswap/v2-core/contracts/interfaces/IUniswapV2Pair.sol";
import "@uniswap/v2-core/contracts/interfaces/IUniswapV2Factory.sol";

//The Goal is to understand each part + try to optimize it in gas + add some features
//checks the TODOs

contract PantherToken is BEP20 {
    // Transfer tax rate in basic points (500 = 0.5%)
    // TODO: check where its specify for basis points
    uint16 public transferTaxRate = 500;

    // Burn rate % of transfer tax (20% * 5% = 1%)
    uint16 public burnRate = 20;

    // constant var better for gas, tax rate 10% here
    uint16 public constant MAXIMUM_TRANSFER_TAX_RATE = 1000;
   
    // TODO: check why its 36 zeros after x 
    address public constant BURN_ADDRESS = 0x000000000000000000000000000000000000dEaD;

    uint16 public 


