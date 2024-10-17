// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {PriceConverter} from "PriceConverter.sol";

contract FundMe{
    using PriceConverter for uint256;

    uint256 minimumUSD = 5e18;

    address[] public funders;
    mapping(address => uint256) public addressToAmountFunded;

    function fund() public payable{
        require(msg.value.convert() >= minimumUSD, "Not enough ethereum");
        funders.push(msg.sender);
        addressToAmountFunded[msg.sender]+=msg.value;
    }
}

