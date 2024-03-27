// SPDX-License-Identifier: MIT
pragma solidity  ^0.5.9;

contract Lesson3 {
    uint public  lastValueSent;
    string public  lastFunctionCalled;
    uint public myUint;

    function setMyUint(uint _myUint) public {
      myUint  = _myUint;  
    }

    function() external payable { 
        lastValueSent = msg.value;
        lastFunctionCalled = "receive";
    }

}

// * Method identifier "setMyUnit(uint256)" in EVM *
// - The hexadecimal of before of hifen, represent ID of method to EVM
// - After hifen, represent ID of the last transaction

// 0xe492fd84 - 000000000000000000000000000000000000000000000000000000000000000c / setMyUint = 12
// 0xe492fd84 - 00000000000000000000000000000000000000000000000000000000000000dc / setMyUint = 220