pragma solidity ^0.5.0;
	contract A{
        uint n;
        function set (uint value ) external{
            n=value;
        }
        function()external payable{
            n=0;
            }
 }
contract example {
    function callA(A a) public returns(bool){
         (bool success,)=address(a).call(abi.encodeWithSignature("setter()"));
         require (success);
         address payable payableA = address(uint160(address(a)));
           return (payableA.send(2 ether));
            }
}


