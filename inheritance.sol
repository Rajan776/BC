pragma solidity^ 0.8;
contract parent{
	uint internal sum;	
	function setValue() external {
		uint a = 10;
		uint b = 20;
		sum = a + b;
	}
}
contract child is parent{
	function getValue(
	) external view returns(uint) {
		return sum;
	}
}
contract caller {
	child cc = new child();
	function testInheritance(
	) public returns (uint) {
		cc.setValue();
		return cc.getValue();
	}
}