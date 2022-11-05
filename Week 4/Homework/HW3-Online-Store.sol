// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract store {
    enum Color {
        red,
        green,
        black,
        white
    }

    // Using an enum inside a struct
    struct Car {
        uint256 id;
        string manufacturer;
        string model;
        uint256 horsepower;
        Color colors;
    }

    struct Client {
        uint256 id;
        string name;
        string email;
        bool hasPaid;
    }

    Car Golf = Car(1, "Volkswagen", "Golf", 180, Color.black);
    Client Claude = Client(1, "Claude", "claude@cbiver.eu", true);

    
}
