import 'book.dart';
import 'user.dart';

class Student extends User {
  final List<Book> _borrowedBooks = [];

  Student({required super.name, required super.id});

  void BorrowBook(Book book) {
    if (!book.decreaseCopies()) {
      print('No available copies of "${book.getTitle}".');
    }
    _borrowedBooks.add(book);
    print('$name borrowed "${book.getTitle}".');
  }

  List<Book> get getBorrowedBooks => _borrowedBooks;

  void returnBook(Book book) {
    if (!_borrowedBooks.contains(book)) {
      print('$name did not borrow "${book.getTitle}".');
    }

    _borrowedBooks.remove(book);
    book.increaseCopies();
    print('$name returned "${book.getTitle}".');
  }
}
