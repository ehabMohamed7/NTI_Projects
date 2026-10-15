

import 'patiant.dart';
import 'person.dart';

class Doctor extends Person {
  String _specialization;
  final List<Patient> _patients = [];

  Doctor(super.id, super.name, String specialization)
      : _specialization = specialization {
    if (specialization.trim().isEmpty) {
      throw ArgumentError('Specialization cannot be empty.');
    }
  }

  String get specialization => _specialization;

  set specialization(String value) {
    if (value.trim().isEmpty) {
      throw ArgumentError('Specialization cannot be empty.');
    }
    _specialization = value;
  }

  List<Patient> get patients => _patients;

  bool hasPatient(Patient patient) => _patients.any((p) => p.id == patient.id);


  bool assignPatient(Patient patient) {
    if (hasPatient(patient)) return false;
    _patients.add(patient);
    return true;
  }

  @override
  void displayInfo() {
    if (_patients.isEmpty) {
      print('   Patients: none');
    } else {
      print('   Patients:');
      for (final p in _patients) {
        print('     - ${p.name} (ID ${p.id})');
      }
    }
  }
}