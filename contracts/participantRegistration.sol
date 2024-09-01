// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract ParticipantRegistration {
    // Mapping to store participant IDs to their registration status (true if registered, false if not)
    //? TODO: Declare a mapping to track whether a participant is registered using their ID.
    // ...

    // Mapping to store participant IDs to their details (like registration number)
    //? TODO: Declare a mapping to store the registration number of each participant using their ID.
    // ...

    // Mapping to associate participant names with their Ethereum addresses
    //? TODO: Declare a mapping to associate participant names with their Ethereum addresses.
    // ...

    // Event to log the registration of a participant
    //? TODO: Define an event named `ParticipantRegistered` to log participant ID, registration number, and address.
    // ...

    // Function to register a participant with an ID and a name
    function registerParticipant(uint256 participantID, uint256 registrationNumber, string memory name) public {
        //? TODO: Ensure the participant is not already registered using the appropriate mapping.
        //? Hint: Use `require` to check the condition and provide an error message if the participant is already registered.
        // ...

        //? TODO: Store the participant's registration number in the mapping.
        // ...

        //? TODO: Mark the participant as registered using the appropriate mapping.
        // ...

        //? TODO: Map the participant's name to the sender's address using the appropriate mapping.
        // ...

        //? TODO: Emit the `ParticipantRegistered` event to log the registration details.
        // ...
    }

    // Function to check if a participant is registered using their ID
    function isParticipantRegistered(uint256 participantID) public view returns (bool) {
        //? TODO: Return the registration status of the participant using the appropriate mapping.
        // ...
    }

    // Function to get the registration number of a participant by their ID
    function getRegistrationNumber(uint256 participantID) public view returns (uint256) {
        //? TODO: Ensure the participant is registered before retrieving their registration number.
        //? Hint: Use `require` to check the condition and provide an error message if the participant is not registered.
        // ...

        //? TODO: Return the registration number of the participant using the appropriate mapping.
        // ...
    }

    // Function to get the Ethereum address associated with a participant's name
    function getAddressByName(string memory name) public view returns (address) {
        //? TODO: Return the Ethereum address associated with the participant's name using the appropriate mapping.
        // ...
    }
}
