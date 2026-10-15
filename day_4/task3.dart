class Vehicles {}

mixin Driving {
  drive() {
    print('Driving');
  }
}
mixin flying {
  fly() {
    print('flying');
  }
}
mixin sailing {
  sail() {
    print('sailing');
  }
}

class Car extends Vehicles with Driving {}

class Plane extends Vehicles with flying {}

class Boat extends Vehicles with sailing {}
