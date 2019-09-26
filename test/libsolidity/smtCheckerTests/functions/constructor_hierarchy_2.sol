pragma experimental SMTChecker;
contract C { constructor(uint) public {} }
contract A is C { constructor() C(2) public {} }
contract B is C { constructor() C(3) public {} }
contract J is C { constructor() C(3) public {} }
// ----
// Warning: (107-111): Assertion checker does not yet support calls to super constructors.
// Warning: (156-160): Assertion checker does not yet support calls to super constructors.
// Warning: (205-209): Assertion checker does not yet support calls to super constructors.
