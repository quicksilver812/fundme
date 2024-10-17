// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {AggregatorV3Interface} from "/Users/allendsouza/Desktop/Codes/Blockchain/fundme/AggregatorV3Interface.sol";

contract FundMe{
    uint256 minimumUSD = 5e18;

    function fund() public payable{
        require(msg.value >= minimumUSD, "Not enough ethereum");
    }

    function getPrice()view public returns(uint256){

    }
}

