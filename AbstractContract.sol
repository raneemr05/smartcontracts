//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;
//Base Abstract contract with virtual functions
//May have functions declared and defined
abstract contract member
{
    string membername;
    function assignName() virtual public returns(string memory);
    function sayHello() virtual public returns(string memory);
    function sayBye() public
    {
        
    }
}
//Dervied contract with override functions
contract student is member
{
    function assignName() override public pure returns(string memory)
    {
        return("Raneem Rashid");
    }
    function sayHello() override public returns(string memory)
    {

    }
}
