pragma solidity ^0.5.0;

contract ForTest{
    uint result = 0;

    function sum() public returns(uint data){
    for(uint i=11;i<20;i++){
    result=result+i;
    }
    return result;
}
}