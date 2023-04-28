pragma solidity ^0.5.0;
contract test{
    struct Book{
        string title;
        string author;
        uint book_id;
    }
    Book book;
    function setBook() public{
        book = Book('SOLIDITY', 'JOHN D',101);
    }
    function getBookId() public view returns(string memory,uint){
        return (book.title,book.book_id);
    }
}