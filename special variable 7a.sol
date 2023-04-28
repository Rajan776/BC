//7.A(1) Solidity contract  to demonstrate msg.sender
pragma solidity ^0.5.0;
contract LedgerBalance {
    mapping(address => string) name;

    function updateName() public returns(string memory){
    name[msg.sender]="Dip";
    return name[msg.sender];
    }
    function printsender() public view returns(address){
        return msg.sender;
    }
}