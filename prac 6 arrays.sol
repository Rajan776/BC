pragma solidity ^0.5.0;
contract Array
{
    uint[] 
    nums=[1,2,3,4];
    function getLength() public returns(uint)
    {
        return nums.length;
    }
    function pop() public
    {
        delete nums[1];
    }
    function push() public returns(uint[] memory)
    {
        nums.push(33);
        return nums;
    }
     function push(uint i) public returns(uint[] memory)
    {
        nums.push(i);
        return nums;
    }
}