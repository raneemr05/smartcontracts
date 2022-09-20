//SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract ArraySample
{
    //Array --> Fixed and Dynamic Length 
    // Array (Index, Value)
    //Declared array of size 15 
    //names[0] = "Alice"
    //names[1] = "Bob"
    //State variable 
    string[14] names;

    function setData(uint8 _index, string memory _value) public {
        names[_index] = _value;
    }

    function readData(uint8 _index) public view returns (string memory)
    {
        return names[_index];
    }

    //Dynamic Array 
    uint[] phoneNumber;

    function setDataDynamic(uint _phone) public {
        phoneNumber.push(_phone);
    }
    
    function readDataDynamic(uint8 _index) public view returns(uint)
    {
        return phoneNumber[_index];
    }
}
