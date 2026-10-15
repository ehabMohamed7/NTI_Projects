class Animals {
  String name;
  int age;
  Animals(this.name, this.age);

  void eat() {
    print('Animal $name is eating');
  }
}

class Lion extends Animals {
  bool isWild;
  Lion(super.name, super.age, this.isWild);
  void roar() {
    print('Animal $name is roaring');
  }
}

class Elephant extends Animals {
  int tuskLength;
  Elephant(super.name, super.age, this.tuskLength);
  void sprayWater() {
    print('Animal $name is spraying water with its trunk');
  }
}
