// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Homework1 {
    struct User {
        uint256 userid;
        string role;
        string password;
    }

    event userAdded(
        uint256 indexed _id,
        string indexed role,
        string password
    );

    User claude;

    function newUser(uint256 _id, string memory _role, string memory _password) public {
        claude.userid = _id;
        claude.role = _role;
        claude.password = _password;
        emit userAdded(_id, _role, _password);
    }

    mapping (uint256 => string) public userName;

    function setUserName(uint256 _id, string memory _username) public {
        userName[_id] = _username;
    }
}
