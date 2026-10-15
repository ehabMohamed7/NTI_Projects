void main() {
  // print(getProuductPrice('phone'));

  Student student1 = Student(name: 'Ehab', age: 22);
  print(student1.name);
  student1.displayInfo();
}

//task1
// int? getProuductPrice(String prouductName) {
//   if (prouductName == 'phone') {
//     return 10000;
//   } else {*
//     return null;
//   }
// }

//task2
class Student {
  String name;
  int age;
  String? grade;
  String? city;

  Student({
    required this.name,
    required this.age,
    this.grade = 'Not Assigned',
    this.city = 'unknown',
  });

  displayInfo() {
    print('Name: $name');
    print('Age: $age');
    print('Grade: $grade');
    print('City: $city');
  }
}
