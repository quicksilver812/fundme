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

    function withdraw() public {
        for(uint256 fundersIndex = 0; fundersIndex<funders.length; fundersIndex++){
            address funder = funders[fundersIndex];
            addressToAmountFunded[funder] = 0;
        }
        funders = new address[](0);

        (bool callSuccess, ) = payable(msg.sender).call{value:address(this).balance}("");

        require(callSuccess, "Withdrawal Unsuccessful");
    }
}

