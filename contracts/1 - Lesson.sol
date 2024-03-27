// SPDX-License-Identifier: MIT
pragma solidity  ^0.5.9;

contract Lesson1 {
    string public  myString = "Hello Block";

    function update(string memory _myString) public  {
        myString = _myString;
    }
}