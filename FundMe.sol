// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract FundMe{
    uint256 minimumUSD = 5e18;

    function fund() public payable{
        require(msg.value >= minimumUSD, "Not enough ethereum");
    }
}

