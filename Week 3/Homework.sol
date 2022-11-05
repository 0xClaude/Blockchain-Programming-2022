// SPDX-License-Identifier: MIT

pragma solidity ^0.8.3;

contract Homework {
    // Initialize variables
    // These are global variables
    uint256 supply;
    uint256 txburn;
    address owner;

    // the constructor gives global variables some values
    constructor(
        uint256 _supply,
        uint256 _txburn,
        address _owner
    ) {
        supply = _supply;
        txburn = _txburn;
        owner = _owner;
    }

    // Functions that change global variables
    function changeSupply(uint256 _s) public {
        supply = _s;
    }

    function changeTxburn(uint256 _t) public {
        txburn = _t;
    }

    function changeOwner(address _o) public {
        owner = _o;
    }

    // Function with local variables
    // Visibility is pure because we don't change anything on the blockchain
    // This function also has a very basic if/else conditional
    function subtraction(int256 x, int256 y) public pure returns (int256) {
        // This is a local variable, it only exists in the scope of this function
        int256 result;
        if (x > y) {
            result = x - y;
        } else {
            result = y - x;
        }
        return result;
    }

    // Function with state variable
    // This returns the timestamp of the last block that has been mined
    function getTime() public view returns (uint256) {
        return block.timestamp;
    }

    // This will return the current blocknumber
    function getBlockNumber() public view returns (uint256) {
        return block.number;
    }

    // This will return the current mining difficulty
    function getDifficulty() public view returns (uint256) {
        return block.difficulty;
    }
}
