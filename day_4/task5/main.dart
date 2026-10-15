import 'person.dart';
import 'professor.dart';
import 'student.dart';

void main() {
  final student = Student('Ahmed', 101);
  final professor = Professor('Mohamed', 201, 'Computer Science');

  student.displayInfo();
  student.displayRole();

  student.enrollInCourse('Dart Programming');
  student.displayCourses();

  student.gpa = 3.8;
  print('Updated GPA: ${student.gpa}');

  student.gpa = 5.0;
  print('GPA after invalid update: ${student.gpa}');

  professor.displayInfo();
  professor.displayRole();

  List<Person> people = [student, professor];

  for (final person in people) {
    person.displayRole();
  }
}
