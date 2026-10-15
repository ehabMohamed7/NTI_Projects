class Animal {
  eat() {
    print('eating');
  }
}

mixin walking {
  walk() {
    print('walking');
  }
}
mixin flying {
  fly() {
    print('flying');
  }
}
mixin swimming {
  swim() {
    print('swimming');
  }
}

class Dog extends Animal with walking {}

class Bird extends Animal with flying {}

class Fish extends Animal with swimming {}
