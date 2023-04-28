pragma solidity ^0.8;

contract A {
    string internal x;

    function setA() external {
        x = "Multiple Inheritance";
    }
}


contract B {
    uint256 internal pow;

    function setB() external {
        uint256 a = 2;
        uint256 b = 20;
        pow = a**b;
    }
}


contract C is A, B {

    function getStr() external returns (string memory) {
        return x;
    }

  
    function getPow() external returns (uint256) {
        return pow;
    }
}

contract caller {

    C contractC = new C();

    function testInheritance() public returns (string memory, uint256) {
        contractC.setA();
        contractC.setB();
        return (contractC.getStr(), contractC.getPow());
    }
}