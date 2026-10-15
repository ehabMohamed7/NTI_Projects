void main() {
  //task1
  print('task1');
  int age = 30;
  String job = "Software engineer";
  bool isMale = true;
  double score = 95.5;

  print(age);
  print(job);
  print(isMale);
  print(score);

  print('###################################');

  print('task2');

  //task2
  //1
  var x = 'ahmed';
  print(x); //output :ahmed
  var y = 15;
  print(y); //output :15

  //2
  var i = 30;
  // i = 'amira';
  print(i); //output : error

  //3
  dynamic age1 = '15';
  age = 15;
  print(age1); //output : 15 (int)

  //4
  dynamic a = 'name';
  a = 80;
  print(a); //output : 80
  print('###################################');

  //task3
  print('task3');

  int temp = 25;

  if (temp > 30) {
    print('It\'s Hot');
  } else if (temp >= 15 && temp <= 30) {
    print('Nice weather');
  } else if (temp < 15) {
    print('It\'s cold');
  }

  print('###################################');

  //task4
  print('task4');

  String sign = '-';
  switch (sign) {
    case '+':
      print('Add operator');
    case '-':
      print('sub operator');

    default:
      print('other');
  }

  print('###################################');

  //task5
  //1
  for (int i = 1; i <= 20; i++) {
    if (i % 2 == 0) {
      print(i);
    }
  }
  //2

  int sum = 0;
  for (int i = 1; i <= 50; i++) {
    sum += i;
  }
  print(sum);
  print('###################################');

  //task5
  String name = 'Ehab';

  for (int i = name.length - 1; i >= 0; i--) {
    print(name[i]); //
  }
}
