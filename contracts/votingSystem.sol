// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract VotingSystem {
    // Mapping to store the number of votes for each candidate
    mapping(string => uint256) private votes;

    // Array to store the list of candidates
    string[] private candidates;

    // Function to add a candidate to the list
    function addCandidate(string memory name) public {
        //? TODO: Call an internal function to add the candidate to the list
        //? Hint: Use an internal function that checks if the candidate already exists before adding.
        // ...
    }

    // Function to vote for a candidate
    function vote(string memory name) public {
        //? TODO: Call an internal function to cast a vote for the candidate
        //? Hint: The internal function should check if the candidate exists before voting.
        // ...
    }

    // Internal function to add a candidate to the list
    function _addCandidate(string memory name) internal {
        //? TODO: Ensure the candidate does not already exist in the list.
        //? Hint: Use a private function to check if a candidate exists.
        //? Hint: If the candidate does not exist, add their name to the `candidates` array and initialize their votes to zero.
        // ...
    }

    // Internal function to cast a vote
    function _castVote(string memory name) internal {
        //? TODO: Ensure the candidate exists before casting a vote.
        //? Hint: Use a private function to check if a candidate exists.
        //? Hint: If the candidate exists, increment their vote count in the `votes` mapping.
        // ...
    }

    // Private function to check if a candidate exists
    function _candidateExists(string memory name) private view returns (bool) {
        //? TODO: Loop through the `candidates` array to check if the candidate exists.
        //? Hint: Use `keccak256(abi.encodePacked(...))` for comparing strings.
        //? Example: `keccak256(abi.encodePacked(candidates[i])) == keccak256(abi.encodePacked(name))`
        // ...
    }

    // Function to get the vote count for a candidate
    function getVoteCount(string memory name) public view returns (uint256) {
        //? TODO: Check if the candidate exists before returning the vote count.
        //? Hint: Use the `_candidateExists` function to validate the candidate.
        //? Hint: Return the vote count from the `votes` mapping.
        // ...
    }
}
