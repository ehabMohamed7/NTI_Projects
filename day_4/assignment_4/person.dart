abstract class Person {
  int _id;
  String _name;

  Person(int id, String name) : _id = id, _name = name {}

  int get id => _id;
  String get name => _name;

  set id(int value) {
    if (value <= 0) print('ID must be positive.');
    _id = value;
  }

  set name(String value) {
    if (value.trim().isEmpty) print('Name cannot be empty.');
    _name = value;
  }

  void displayInfo();
}
