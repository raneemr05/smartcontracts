//SPDX-License-Identifier: MIT

pragma solidity ^0.8.8;

//EVM: Ethereum Virtual Machine
//Avalance, Polygon,

contract SimpleStorage
{
    //Declara a variable
    uint256 favNumber;
    //bool, string, byte32

    struct People
    {
        string name;
        uint256 favoriteNumber;
    }

    //Mapping works like a dictionary
    mapping(string => uint256) public nameToFav;


    People[] public people;

    //Modify state of the blockchain
    //virtual for overiden function
    function setNumber(uint256 _fav) public virtual
    {
        favNumber = _fav;   

    }

    //View or pure function, doesn't modify state of blockchain
    function getNumber() public view returns(uint256){
        return favNumber;
    }
    //Data locations in function such as calldata, memory and storage
    //Storage are permanent, stayed there forever
    //calldata and memory is temporary
    function addPerson(string memory _name, uint256 _fav) public
    {
        people.push(People(_name, _fav));
        nameToFav[_name] = _fav;
    }


}
