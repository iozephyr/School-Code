SELECT Reader.readerNo, readerName, Book.bookNo, bookName
FROM Reader, Book, Borrow
WHERE Reader.readerNo = Borrow.readerNo
AND Borrow.bookNo = Book.bookNo
GROUP BY Reader.readerNo, readerName, Book.bookNo, bookName
HAVING SUM(price) >= 150