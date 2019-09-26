pragma experimental SMTChecker;
contract C { constructor(uint) public {} }
contract A is C { constructor() C(2) public {} }
// ----
// Warning: (107-111): Assertion checker does not yet support calls to super constructors.
