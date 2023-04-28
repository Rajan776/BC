pragma solidity ^0.5.0;
contract LedgerBalance {
mapping(address =>uint) balance;
function updateBalance() public returns(uint){
    balance[msg.sender]=20;
    return balance[msg.sender];
}
}