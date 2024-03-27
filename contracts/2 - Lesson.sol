// SPDX-License-Identifier: MIT
pragma solidity  ^0.5.9;

contract Lesson2 {
    string public  myString = "Hello Block";

    function update(string memory _myString) public payable {
        if(msg.value == 1 ether){
        myString = _myString;
        } else{
           msg.sender.transfer(msg.value);
        }
    }
}
