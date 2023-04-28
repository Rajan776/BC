//7a(2)Solidity contract  to demonstrate the special variables block.number and blockhash.
pragma solidity ^0.5.0;
contract prac
{
	
	uint BNumber;
	bytes32 BHashPresent;
	bytes32 BHashPrevious;
	function PresentHash()
			public returns(bytes32)
	{
		BNumber = block.number;
		BHashPresent =blockhash(BNumber);
		return BHashPresent;
	}

	function PreviousHash()
			public returns(bytes32)
	{
		BNumber = block.number;
		BHashPrevious = blockhash(BNumber - 1);
		return BHashPrevious;
	}
}