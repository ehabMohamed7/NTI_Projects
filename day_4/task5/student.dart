import 'person.dart';

class Student extends Person {
  double _gpa = 0.0;
  final List<String> _courses = [];

  Student(super.name, super.id);

  double get gpa => _gpa;

  set gpa(double value) {
    if (value >= 0.0 && value <= 4.0) {
      _gpa = value;
    } else {
      print('Invalid GPA!');
    }
  }

  List<String> get courses => _courses;

  void enrollInCourse(String course) {
    if (_courses.contains(course)) {
      print('$name is already enrolled in $course.');
      return;
    }

    _courses.add(course);
    print('$name enrolled in $course.');
  }

  @override
  void displayRole() {
    print('I am a student.');
  }

  void displayCourses() {
    print('$name\'s courses: $_courses ,');
  }
}
