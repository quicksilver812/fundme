// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {PriceConverter} from "PriceConverter.sol";

contract FundMe{
    using PriceConverter for uint256;

    uint256 constant MINIMUM_USD = 5e18;
    address immutable i_owner;
    address[] public funders;
    mapping(address => uint256) public addressToAmountFunded;

    constructor(){
        i_owner = msg.sender;
    }

    function fund() public payable{
        require(msg.value.convert() >= MINIMUM_USD, "Not enough ethereum");
        funders.push(msg.sender);
        addressToAmountFunded[msg.sender]+=msg.value;
    }

    function withdraw() public onlyOwner(){
        for(uint256 fundersIndex = 0; fundersIndex<funders.length; fundersIndex++){
            address funder = funders[fundersIndex];
            addressToAmountFunded[funder] = 0;
        }
        funders = new address[](0);

        (bool callSuccess, ) = payable(msg.sender).call{value:address(this).balance}("");

        require(callSuccess, "Withdrawal Unsuccessful");
    }

    modifier onlyOwner{
        require(msg.sender == i_owner, "Not owner, cannot withdraw funds.");
        _;
    }
}

