import 'doctor.dart';
import 'hospital.dart';
import 'patiant.dart';
import 'surgary.dart' show Surgeon;

void main() {
  final hospital = Hospital('City Hospital');

  final p1 = Patient(1, 'Ahmed Ali', 45, ['Diabetes']);
  final p2 = Patient(2, 'Sara Mostafa', 30);
  final p3 = Patient(3, 'Omar Khaled', 60, ['Hypertension', 'Appendectomy']);

  hospital.registerPatient(p1);
  hospital.registerPatient(p2);
  hospital.registerPatient(p3);
  hospital.registerPatient(Patient(1, 'Duplicate', 20));

  final d1 = Doctor(10, 'Mona Hassan', 'Cardiology');
  final s1 = Surgeon(11, 'Khaled Samir', 'Orthopedics');

  hospital.hireDoctor(d1);
  hospital.hireDoctor(s1);

  hospital.assignPatientToDoctor(1, 10);
  hospital.assignPatientToDoctor(2, 11);
  hospital.assignPatientToDoctor(3, 11);
  hospital.assignPatientToDoctor(1, 10);

  s1.performSurgery(p2, 'Knee replacement');
  s1.performSurgery(p3, 'Hip surgery');
  s1.performSurgery(p1, 'Bypass');

  hospital.showAllDoctors();
  hospital.showAllPatients();
}
