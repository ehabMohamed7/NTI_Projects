

import 'doctor.dart';
import 'patiant.dart';

class Surgeon extends Doctor {
  int _surgeriesPerformed = 0;

  Surgeon(super.id, super.name, super.specialization);

  int get surgeriesPerformed => _surgeriesPerformed;

   bool performSurgery(Patient patient, String surgeryName) {
    if (!hasPatient(patient)) {
      print('Dr. $name cannot operate: ${patient.name} is not assigned to them.');
      return false;
    }
    _surgeriesPerformed++;
    patient.addToMedicalHistory('Surgery: $surgeryName');
    print('Dr. $name performed "$surgeryName" on ${patient.name}.');
    return true;
  }

  @override
  void displayInfo() {
    print('Surgeon #$id | Dr. $name | Specialization: $specialization '
        '| Surgeries performed: $_surgeriesPerformed');
    if (patients.isEmpty) {
      print('   Patients: none');
    } else {
      print('   Patients:');
      for (final p in patients) {
        print('     - ${p.name} (ID ${p.id})');
      }
    }
  }
}