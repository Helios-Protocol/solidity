pragma experimental SMTChecker;
contract C {
	uint a;
	constructor(uint x) public {
		a = x;
	}
}

contract B is C {
	constructor (uint x) public {
		a = x;
	}
}

contract A is B {
	constructor(uint x) C(x + 2) B(x + 1) public {
		assert(a == x + 1);
	}
}
// ----
// Warning: (204-209): Overflow (resulting value larger than 2**256 - 1) happens here
// Warning: (213-218): Overflow (resulting value larger than 2**256 - 1) happens here
// Warning: (243-248): Overflow (resulting value larger than 2**256 - 1) happens here
