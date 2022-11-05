// SPDX-License-Identifier: MIT
pragma solidity ^0.7.0;

contract View {
    function readData() public view returns (uint256) {
        return block.number;
    }

    function readADdress() public view returns (address) {
        return address(this);
    }

    function getResult() public pure returns(uint256) {
        uint256 a = 1;
        uint256 b = 2;
        return a + b;
    }
}
