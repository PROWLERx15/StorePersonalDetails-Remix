// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract PersonalDetails
{
    struct Person
    {
        string name;
        string country;
        uint256 age;
    }

    Person[] public ListofPeople;
    mapping (string=>Person) public ShowDetails;

    function AddPerson(string memory _name,string memory _country,uint256 _age) public 
    {
            Person memory newPerson = Person(_name,_country,_age);
            ListofPeople.push(newPerson);
            ShowDetails[_name] = newPerson;
    }
    
}