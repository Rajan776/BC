pragma solidity^0.5.12;
contract Test{
    function callAddMod() public pure returns(uint){
        return addmod(4,5,3);
    }
    function callMulMod() public pure returns(uint){
        return mulmod(3,4,5);
    }
} 