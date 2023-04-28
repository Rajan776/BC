pragma solidity^0.5.12;
contract sample{
    function getSum(uint a,uint b) public pure returns(uint){
        return a+b;
    }
     function getSum(uint a,uint b, uint c) public pure returns(uint){
        return a+b+c;
    }
     function callSumWithTwoArgument() public pure returns(uint){
        return getSum(4,9);
    }
    function callSumWithThreeeArgument() public pure returns(uint){
        return getSum(1,4,7);
    }
}