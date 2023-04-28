// Solidity program to demonstrate
// creating a constructor
pragma solidity ^0.8;

// Creating a contract
contract constructorExample {

// Declaring state variable
string str;

constructor() public {
str = "K.C College : Rajan K Tiwari:M.Sc Part II:Roll No 35";
}

// Defining function to
// return the value of 'str'
function getValue(
) public view returns (
string memory) {
return str;
}
}