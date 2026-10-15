

import 'doctor.dart';
import 'patiant.dart';


class Hospital {
  String _name;
  final List<Patient> _patients = [];
  final List<Doctor> _doctors = [];

  Hospital(this._name);

  String get name => _name;
  set name(String value) {
    if (value.trim().isEmpty) print('Name cannot be empty.');
    _name = value;
  }

  List<Patient> get patients => List.unmodifiable(_patients);
  List<Doctor> get doctors => List.unmodifiable(_doctors);

  Patient? findPatient(int id) {
    for (final p in _patients) {
      if (p.id == id) return p;
    }
    return null;
  }

  Doctor? findDoctor(int id) {
    for (final d in _doctors) {
      if (d.id == id) return d;
    }
    return null;
  }

  bool registerPatient(Patient patient) {
    if (findPatient(patient.id) != null) {
      print('Patient ID ${patient.id} already exists.');
      return false;
    }
    _patients.add(patient);
    print('Registered patient ${patient.name}.');
    return true;
  }

  // Works for Doctor AND Surgeon (a Surgeon is a Doctor).
  bool hireDoctor(Doctor doctor) {
    if (findDoctor(doctor.id) != null) {
      print('Doctor ID ${doctor.id} already exists.');
      return false;
    }
    _doctors.add(doctor);
    print('Hired Dr. ${doctor.name}.');
    return true;
  }

  bool assignPatientToDoctor(int patientId, int doctorId) {
    final patient = findPatient(patientId);
    final doctor = findDoctor(doctorId);
    if (patient == null || doctor == null) {
      print('Assignment failed: patient or doctor not found.');
      return false;
    }
    if (!doctor.assignPatient(patient)) {
      print('${patient.name} is already assigned to Dr. ${doctor.name}.');
      return false;
    }
    print('Assigned ${patient.name} to Dr. ${doctor.name}.');
    return true;
  }

  void showAllDoctors() {
    print('\n===== Doctors at $_name =====');
    for (final d in _doctors) {
      d.displayInfo(); // polymorphism: Doctor or Surgeon version runs
    }
  }

  void showAllPatients() {
    print('\n===== Patients at $_name =====');
    for (final p in _patients) {
      p.displayInfo();
    }
  }
}