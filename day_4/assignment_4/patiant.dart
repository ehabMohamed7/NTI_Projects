

import 'person.dart';

class Patient extends Person {
  int _age;
  final List<String> _medicalHistory;

  Patient(int id, String name, int age, [List<String>? medicalHistory])
      : _age = age,
        _medicalHistory = List.of(medicalHistory ?? []),
        super(id, name) {

  }

  int get age => _age;

  set age(int value) {
    if (value < 0 || value > 150) print('Invalid age.');
    _age = value;
  }

 
  List<String> get medicalHistory => _medicalHistory;

  void addToMedicalHistory(String entry) {
    if (entry.trim().isEmpty) print('Entry cannot be empty.');
    _medicalHistory.add(entry);
  }

  @override
  void displayInfo() {
    print('Patient #$id | Name: $name | Age: $age');
    print('   Medical history: '
        '${_medicalHistory.isEmpty ? "none" : _medicalHistory.join(", ")}');
  }
}