//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

interface Student{
    function setAge() external returns(uint);
    function setName() external returns(string memory);
}
contract member is Student
{
    function setAge() override pure external returns(uint)
    {
        return 30;
    }

    function setName() override pure external returns(string memory)
    {
        return "Raneem";
    }
}
