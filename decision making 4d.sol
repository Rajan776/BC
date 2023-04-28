pragma solidity ^0.5.0;

contract Check{
    uint i=100;
    uint j=80;
    function ifElse() public view returns(string memory)
    {
    if(i<j)
    {
    return "i is smaller than J";
    }
    else if(i==j)
    {
        return "i is greater than J";
    }
    else
    {
        return "i or j is equal";
    }

     }
}