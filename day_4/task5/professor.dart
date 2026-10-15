
import 'person.dart';

class Professor extends Person {
  final String subject;

  Professor(super.name, super.id, this.subject);

  @override
  void displayRole() {
    print('I am a professor.');
  }
}
