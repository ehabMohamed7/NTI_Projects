
abstract class Person {
  final String name;
  final int id;

  Person(this.name, this.id);

  void displayRole();


  void displayInfo() {
    print('Name: $name');
    print('ID: $id');
  }
}