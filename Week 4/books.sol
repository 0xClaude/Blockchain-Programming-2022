// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Bookstore {
    struct Book {
        string title;
        string author;
        uint256 book_id;
    }

    Book book; // Greate an instance of "Book", name it "book"

    function setBook() public {
        book = Book("Learn Solidity", "Solidity author", 1);
    }

    function getBookId() public view returns(uint256) {
        return book.book_id;
    }

    function getBookTitle() public view returns (string memory) {
        return book.title;
    }

    function getBookAuthor() public view returns (string memory) {
        return book.author;
    }
}
