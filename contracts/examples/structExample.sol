// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract StructExample {
    // Define a struct to represent a book
    struct Book {
        string title;
        string author;
        uint256 publishedYear;
    }

    // Mapping to store books by their unique ID
    mapping(uint256 => Book) private books;

    // Function to add a new book
    function addBook(uint256 _id, string memory _title, string memory _author, uint256 _year) public {
        books[_id] = Book(_title, _author, _year);
    }

    // Function to get a book's details
    function getBook(uint256 _id) public view returns (string memory, string memory, uint256) {
        Book memory book = books[_id];
        return (book.title, book.author, book.publishedYear);
    }
}
