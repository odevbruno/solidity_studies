// SPDX-License-Identifier: MIT
pragma solidity  ^0.5.9;

contract MappingsExample {

    mapping(uint => bool) public myMapping;
    // visual example this:
    // [uint:bool, uint:bool, ...]
    // [0:true, 1:false, ...]

    mapping(address => uint256) public myBalance;
    // visual example this:
    // [address:uint256, address:uint256, ...]
    // [0x00123:100000000, 0x00321:1231100000, ...]

    mapping(uint => mapping(uint => bool)) public uintUintBoolMaping;
    // visual example this:
    // [_key1:[_key2:bool]]
    // [0:[1:true, 2:false], 1:[1:false, 2:true]]

    function setValue(uint _index, bool _value) public   {
        myMapping[_index] = _value;
    }

    function deposit(uint256 _value) public {
        myBalance[msg.sender] = _value;
    }

    function setUintUintBoolMaping(uint _key1, uint _key2, bool _value) public {
        uintUintBoolMaping[_key1][_key2] = _value;
    }

} 