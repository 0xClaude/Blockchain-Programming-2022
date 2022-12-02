// SPDX-License-Identifier: MIT
pragma solidity >0.8.0;

contract Whitelist {
    address public owner;
    uint8 whistelistSpots;

    // We have zero whitelisted wallets at the beginning
    uint8 takenSpots = 0;

    // This is the whitelist itself
    mapping(address => bool) public whitelistedAddress;

    // Set the owner of the contract and the maximum available whistespots
    constructor(uint8 _whitelistSpots) {
        owner = msg.sender;
        whistelistSpots = _whitelistSpots;
    }

    // Display how many whitelist spots are available
    function spotsLeft() public view returns (uint8) {
        return whistelistSpots - takenSpots;
    }

    // Check if the wallet is already whitelisted
    function checkWhitelist() public view returns (bool) {
        return whitelistedAddress[msg.sender];
    }

    // Add the sender to the whitelist
    function addWhitelist() public {
        // Check if there is a spot left
        require(takenSpots < whistelistSpots, "There are no spots available");

        // Check if the wallet isn't whitelisted already
        require(
            whitelistedAddress[msg.sender] != true,
            "You are already whitelisted"
        );

        // Whitelist the address
        whitelistedAddress[msg.sender] = true;

        // Increment counter
        takenSpots++;
    }

    // Remove the sender from the whitelist
    function removeWhitelist() public {
        // Check if sender is whitelisted
        require(
            whitelistedAddress[msg.sender] == true,
            "You are not whitelisted"
        );

        // Remove from whitelist
        whitelistedAddress[msg.sender] = false;

        // Decrease counter
        takenSpots--;
    }

    // Set a modifier for owner restricted functions
    modifier onlyAdmin() {
        require(msg.sender == owner);
        _;
    }

    // Add a custom wallet to the whitelist. Only the contract owner can do this.
    function addWallet(address _addr) public onlyAdmin {
        // Check if there are free spots available
        require(takenSpots < whistelistSpots, "There are no spots available");

        // Check if the wallet is not whitelisted yet
        require(
            whitelistedAddress[_addr] != true,
            "Address is already whitelisted"
        );

        // Add the wallet to the whitelist
        whitelistedAddress[_addr] = true;

        // Increment counter
        takenSpots++;
    }

    // Remove a custom wallet to the whitelist. Only the contract owner can do this.
    function removeWallet(address _addr) public onlyAdmin {
        // Make sure the address is whitelisted
        require(
            whitelistedAddress[_addr] == true,
            "The address is not whtelisted"
        );

        // Remove the wallet address
        whitelistedAddress[_addr] = false;

        // Decrease the counter
        takenSpots--;
    }

    // Get the address of the owner
    function getOwner() public view returns (address) {
        return owner;
    }

    // Set a new owner
    function setOwner(address _newOwner) public onlyAdmin {
        owner = _newOwner;
    }
}
