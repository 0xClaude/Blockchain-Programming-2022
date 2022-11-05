// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Insurance {
    struct Client {
        uint256 id;
        string name;
        string email;
        bool paid;
    }

    // Create first client
    Client First;

    // Use a constructor to set inital values
    constructor(
        uint256 _id,
        string memory _name,
        string memory _email,
        bool _paid
    ) {
        First.id = _id;
        First.name = _name;
        First.email = _email;
        First.paid = _paid;

        // If we would write "Client First" inside of the constructor, it would be a local variable
    }

    // Create a new client
    Client claude = Client(1, "Claude", "claude@cbiver.eu", true);

    // Update Client data
    function setClient(
        Client memory _client,
        string memory _name,
        string memory _email,
        bool _paid
    ) public pure {
        _client.name = _name;
        _client.email = _email;
        _client.paid = _paid;
    }

    // Since structs can't have public visibility, we have to write our own getter
    function getClientName(Client memory _client)
        public
        pure
        returns (string memory)
    {
        return _client.name;
    }

    function getClientEmail(Client memory _client)
        public
        pure
        returns (string memory)
    {
        return _client.email;
    }

    function getClientPaidStatus(Client memory _client)
        public
        pure
        returns (bool)
    {
        return _client.paid;
    }
}
