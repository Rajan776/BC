pragma solidity ^0.8.17;
abstract contract AbstractContract {
	function getStr(
	string memory _strIn) public view virtual returns(
	string memory);
	function setValue(uint _in1, uint _in2) public virtual;
	function add() public virtual returns(uint);
}
contract DerivedContract is AbstractContract{
	uint private num1;
	uint private num2;
	function getStr(
	string memory _strIn) public pure override returns(
	string memory){
		return _strIn;
	}
	function setValue(
	uint _in1, uint _in2) public override{
		num1 = _in1;
		num2 = _in2;
	}
	function add() public view override returns(uint){
		return (num2 + num1);
	}
}
contract Call{
	AbstractContract abs;
	constructor(){
		abs = new DerivedContract();
	}
	function getValues(
	) public returns (string memory,uint){
		abs.setValue(10, 16);
		return (abs.getStr("Rajan"),abs.add());
	}
}
