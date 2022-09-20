//SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

//State Modifier: Pure, View and Payable
contract ModifierSample
{
    //Pure Modifier --> to perform some calculations 
    function add(uint8 _a, uint8 _b) public pure returns(uint8)
    {
        return _a + _b;
    }

    //View Modifier --> to display data from blockchain without making any modification
    string name ="Raneem";
    function displayname() public view returns(string memory)
    {
        return name;
    }

    //Payable Modifier --> A function or contract can accept funds/amount from outside
    function depositMoney() public payable{}
}
