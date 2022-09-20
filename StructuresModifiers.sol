//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

//Struct, mapping
//Constructor and Modifier
contract StructSample
{
    address owner;
    //Initialize owner value using constructor
    //msg.sender is a global variable
    constructor(){
        owner = msg.sender;
    }
    //owner = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4
    //Define a modifier
    modifier onlyOwner{
        require(msg.sender == owner, "Only owner can excute this function");
        _;
    }
    //Defining an event
    event  newLearner (string _name, uint8 _age);
    struct learners
    {
        int id;
        string name;
        uint8 age;
    }
    // l1, l2, l3 ---- l50
    // 1 --> ("Alice", 30)
    // 2 --> ("John" ,35)
    //3 --> ()
    //Mapping (Key -->Value)
    mapping (uint8 => learners) learner;
    //Assign modifier
    //Emit event
    function setLearnerDetails(uint8 _key, string memory _name, uint8 _age) onlyOwner public {
       learner[_key].name = _name;
       learner[_key].age = _age;
       emit newLearner(_name, _age);
    }
    function getLearnerDetails(uint8 _key) public view   returns (string memory, uint8)
    {
        return (learner[_key].name, learner[_key].age);
    }
}
