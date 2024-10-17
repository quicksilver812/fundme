// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {AggregatorV3Interface} from "AggregatorV3Interface.sol";

library PriceConverter{

    function getPrice()view public returns(uint256){
        AggregatorV3Interface priceFeed = AggregatorV3Interface(0x694AA1769357215DE4FAC081bf1f309aDC325306);
        (,int256 price,,,) = priceFeed.latestRoundData();
        return uint256(price);
    }

    function convert(uint256 ethAmount) view public returns(uint256){
        uint256 currentPrice = getPrice();
        uint256 value = ((currentPrice*1e10)*ethAmount)/1e18;
        return value;
    }
}