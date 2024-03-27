// SPDX-License-Identifier: MIT
pragma solidity  ^0.5.9;

contract SendWithdrawMoney {

    // Variable what receive the total balance of contract 
    uint256 public balanceReceived;

    // Deposit any values in this smart contract and update the state of total balance
    function deposit() public payable {
        balanceReceived += msg.value;
    }

    // Just a view, get balance total this contract
    function getContractBalance() public view returns(uint256) {
        return address(this).balance;
    }

    // Here we can do the withdraw  balance total of contract
    function withdrawAll() public{
        address payable to = msg.sender;
        to.transfer(getContractBalance());
    }

    // Here we can do the withdraw balance total of contract, but with a customize address
    function withdrawAddress(address payable to) public  {
        to.transfer(getContractBalance());
    }

}