pragma solidity^0.5.0;

contract Demo{
    
string s1="Rajan";

string s2='Rajan';

bool public isEqual;

function cmp() public{
isEqual=keccak256(abi.encodePacked(s1))==keccak256(abi.encodePacked(s2));
}

}