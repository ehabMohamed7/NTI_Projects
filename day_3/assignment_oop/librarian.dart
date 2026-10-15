import 'book.dart';
import 'library.dart';
import 'user.dart';

class Librarian extends User {
  Librarian({required super.name, required super.id});

  void addBook(Library library, Book book) {
    library.addBook(book);

    print('Librarian $name added "${book.getTitle}".');
  }

  void removeBook(Library library, Book book) {
    library.removeBook(book);

    print('Librarian $name removed "${book.getTitle}".');
  }
}
