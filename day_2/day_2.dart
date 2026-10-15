void main() {
  //task1
  //1
  List<int> nums = [1, 2, 3, 4];
  print(nums[0]);
  print(nums[nums.length - 1]);

  //2
  List<String> names = ["ahmed", "Ali", "omar"];
  names.add("Ehab");
  print(names);
  names.removeAt(names.length - 1);
  print(names);

  //task2
  List<int> numbers = [1, 1, 1, 2, 2, 3, 3];
  numbers.toSet();
  print(numbers);

  //task3
  Map<String, dynamic> student = {
    'name': 'Ehab',
    'age': 32,
    'university': 'modern',
  };
  student['city'] = 'Giza';
  print(student);

  //task4

  Map<String, int> products = {
    'laptop': 15000,
    'Phone': 8000,
    'HeadPhone': 1200,
    'keyboard': 600,
  };

  int max = 0;
  for (var element in products.values) {
    if (element >= max) {
      max = element;
    }
  }
  print(max);

  //task5
  //1
  info('Ehab', 21);
  //2
  List<int> num2 = [1, 2, 3, 4];
  printEvenNumber(num2);

  //task6
  //3
  var student2 = [
    {'name': 'Ehab', 'score': 90},
    {'name': 'Ali', 'score': 80},
    {'name': 'Ahmed', 'score': 45},
  ];
  print(passedStudents(student2));
}

void info(String name, int age) {
  print('name:$name');
  print('age:$age');
}

List<int> printEvenNumber(List<int> numbers) {
  List<int> temp = [];
  for (var item in numbers) {
    if (item % 2 == 0) {
      temp.add(item);
    }
  }
  return temp;
}

List<Map<String, dynamic>> passedStudents(List<Map<String, dynamic>> students) {
  List<Map<String, dynamic>> passedStudents = [];
  for (var student in students) {
    if (student['score'] >= 50) {
      passedStudents.add(student);
    }
  }
  return passedStudents;
}
