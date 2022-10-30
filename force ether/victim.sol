// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

contract Force {/*

                   MEOW ?
         /\_/\   /
    ____/ o o \
  /~____  =ø= /
 (______)__m_m)

*/}

//Since this contract has no payable or fallback or receive function
//It is techically impoosible to send ether into this contract
//However , we can do a little trick to force ether here
//That will be made possible by running the self destruct function
//And providing the address of this contract.