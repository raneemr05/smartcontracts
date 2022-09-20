//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract MoneySample
{
    address owner = 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2;
    // function DepositMoney() public payable {}    
    // fallback() external payable{}
    function checkcontractBalance() public view returns(uint)
    {
        return address(this).balance;
    }
    //SC= 5 eth deposited 
    // Raneem's Address = 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2
    function transferToAddress() public{
        payable(owner).transfer(address(this).balance);
    }
    //Now EC = 0 Eth 
    //Raneem's Address = + 5eth
    function checkAddressBalance() public view returns(uint){
        return  owner.balance;
    }
}
