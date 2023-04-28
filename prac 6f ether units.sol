pragma solidity ^0.5.0;
contract EtherUnitsExample {
    uint256 public valueInWei = 1 ether; // 1 ether in Wei
    uint256 public valueInFinney = 1 finney; // 1 finney in Wei
    uint256 public valueInSzabo = 1 szabo; // 1 szabo in Wei
    uint256 public valueInEther = 1 ether; // 1 ether in Wei

    function convert(uint256 _amount, string memory _unit) public pure returns (uint256) {
        if (keccak256(abi.encodePacked(_unit)) == keccak256(abi.encodePacked("wei"))) {
            return _amount;
        } else if (keccak256(abi.encodePacked(_unit)) == keccak256(abi.encodePacked("finney"))) {
            return _amount * 1 finney;
        } else if (keccak256(abi.encodePacked(_unit)) == keccak256(abi.encodePacked("szabo"))) {
            return _amount * 1 szabo;
        } else if (keccak256(abi.encodePacked(_unit)) == keccak256(abi.encodePacked("ether")) || keccak256(abi.encodePacked(_unit)) == keccak256(abi.encodePacked("eth"))) {
            return _amount * 1 ether;
        } else {
            revert("Invalid unit");
        }
    }
}