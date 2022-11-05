// SPDX-License-Identifier: MIT
pragma solidity ^0.7.0;

contract University {
    struct student {
        uint256 id;
        string name;
        string surname;
        string email;
    }

    student Claude;
    student Jeff;

    function setStudent(
        uint256 _id,
        string memory _name,
        string memory _surname,
        string memory _email
    ) public {
        Jeff.id = _id;
        Jeff.name = _name;
        Jeff.surname = _surname;
        Jeff.email = _email;
    }

    function getStudentId() public view returns (uint256) {
        return Claude.id;
    }

    function getStudentName() public view returns (string memory) {
        return Claude.name;
    }

    function getStudentSurname() public view returns (string memory) {
        return Claude.surname;
    }

    function getStudentEmail() public view returns (string memory) {
        return Claude.email;
    }

    function setStudentId() public {
        Claude.id = 1;
    }

    function setStudentName() public {
        Claude.name = "Claude";
    }

    function setStudentSurname() public {
        Claude.surname = "Biver";
    }

    function setStudentMail() public {
        Claude.email = "claude@cbiver.eu";
    }
}
