// SPDX-License-Identifier: GPL-3.0 
 
pragma solidity >=0.7.0 <0.9.0; 
 
    contract  SmallStore{ 
 
        address public owner; 
 
        constructor (){ 
            owner = msg.sender; 
        } 
 
        mapping (address => uint)public  buyer; 
 
        function payment() public payable { 
            buyer[msg.sender] = msg.value; 
        } 
 
        function withdrawalOfAllMoney()public { 
            address payable _NoName = payable (owner); 
            address _contractMoney = address(this); 
           _NoName.transfer(_contractMoney.balance); 
        } 
    }
