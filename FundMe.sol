// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {PriceConverter} from "PriceConverter.sol";

contract FundMe{
    using PriceConverter for uint256;

    uint256 minimumUSD = 5e18;

    function fund() public payable{
        require(msg.value.convert() >= minimumUSD, "Not enough ethereum");
    }
}

