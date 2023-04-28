pragma solidity ^0.5.0;

contract while1{
uint[] data;
uint8 j=0;
function loop() public returns(uint[] memory)
{
    do
    {
        j++;
        data.push(j);
    }
    while(j<10);
    return data;
}
}