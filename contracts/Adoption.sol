// SPDX-License-Identifier: CC-BY-1.0
// Creative Commons Attribution 1.0 Generic

// Contract will be compiled on version 0.5.0 or greater
pragma solidity >0.5.0;

contract Adoption {
    address[16] public adopters;
    // Adopting a pet
    function adopt(uint petId) public returns (uint) {
    require(petId >= 0 && petId <= 15);

    adopters[petId] = msg.sender;

    return petId;
    }
    // Retrieving the adopters
    function getAdopters() public view returns (address[16] memory) {
    return adopters;
    }
}