contract InlineAssembly {
	function add(uint a) public view returns (uint b) {
		assembly {

			let c := add(a, 56)			
			mstore(0x80, c)
			{

				let d := add(sload(c), 22)
				b := d

			}
	
			b := add(b, c)

		}
	}
}