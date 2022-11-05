// SPDX-License-Identifier: MIT
pragma solidity ^0.7.0;

contract EnumTest {
    enum SelectOneValue{ Small, Medium, Large, Extralarge}
    SelectOneValue choice;
    SelectOneValue constant defaultChoice = SelectOneValue.Medium;

    function setSmall() public {
        choice = SelectOneValue.Small;
    }

    function setMedium() public {
        choice = SelectOneValue.Medium;
    }

    function setLarge() public {
        choice = SelectOneValue.Large;
    }

    function setXlarge() public {
        choice = SelectOneValue.Extralarge;
    }

    function getChoice() public view returns (SelectOneValue) {
        return choice;
    }

    function getDefaultChoice() public pure returns (uint256) {
        return uint256(defaultChoice);
    }
}
