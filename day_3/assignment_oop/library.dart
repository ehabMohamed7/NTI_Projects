import 'book.dart';

import 'student.dart';

class Library {
  final List<Book> _books = [];
  final List<Student> _students = [];

  void addBook(Book book) {
    _books.add(book);
  }

  bool removeBook(Book book) {
    return _books.remove(book);
  }

  void addStudent(Student student) {
    _students.add(student);
  }

  List<Book> get books => _books;
  List<Student> get students => _students;

  void generateReport() {
    for (var book in _books) {
      if (book.getAvailableCopies > 0) {
        print(
          '${book.getTitle} | '
          'Author: ${book.getAuthor} | '
          'Copies: ${book.getAvailableCopies}',
        );
      }
    }

    for (var student in _students) {
      print('\nStudent: ${student.name}');
      print('ID: ${student.id}');

      if (student.getBorrowedBooks.isEmpty) {
        print('Borrowed Books: None');
      } else {
        print('Borrowed Books:');

        for (var book in student.getBorrowedBooks) {
          print('- ${book.getTitle}');
        }
      }
    }
  }
}
