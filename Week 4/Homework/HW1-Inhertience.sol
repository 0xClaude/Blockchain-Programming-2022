// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// The initial contract
contract First {
    string name = "Claude";

    function internalFunction() internal view returns (string memory) {
        return name;
    }

    function publicFunction() public view returns (string memory) {
        return name;
    }
}

// Creating an instance of First
contract InheritanceTest {
    // Create the instance of the first contract
    First first = new First();

    // call the internal function
    // this should result in a compiler error
    // name = first.internalFunction();

    // call the public function
    // This should be fine
    string name = first.publicFunction();
}

// Inherit from contract First
contract Last is First {
    // We can now call all the functions above
    string inhertiedName = internalFunction();
    string secondNAme = publicFunction();
}
