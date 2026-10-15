import 'book.dart';
import 'librarian.dart';
import 'library.dart';
import 'student.dart';

void main() {
  final library = Library();

  final book1 = Book('Clean Code', 'Robert C. Martin', 2008, 3);

  final book2 = Book('Flutter Apprentice', 'Ray Wenderlich', 2020, 2);

  final book3 = Book.NamedConstructor(
    title: 'Dart Programming',
    author: 'Google',
  );

  final student1 = Student(name: 'Ahmed', id: 1);

  final student2 = Student(name: 'Ehab', id: 2);

  library.addStudent(student1);
  library.addStudent(student2);

  final librarian = Librarian(name: 'Mohamed', id: 5);

  librarian.addBook(library, book1);
  librarian.addBook(library, book2);
  librarian.addBook(library, book3);

  student1.BorrowBook(book1);
  student1.BorrowBook(book2);

  student2.BorrowBook(book1);

  student1.returnBook(book1);

  library.generateReport();
}
