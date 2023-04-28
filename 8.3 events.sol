pragma solidity 0.4.21;


contract eventExample {

	uint256 public value = 0;

	event Increment(address owner);

	function getValue(uint _a, uint _b) public {
		emit Increment(msg.sender);
		value = _a + _b;
	}
}