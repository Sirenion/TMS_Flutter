abstract class Vehicle {
  void drive();
  void stop();
}

class Car extends Vehicle {
  double speed = 0.0;
  String color;
  bool _engineStatus = false;

  Car(this.color);

  @override
  void drive() {
    if (_engineStatus) {
      if (speed > 200) {
        print("Машина достигла предела скорости");
      } else {
        speed += 30;
      }
    } else {
      _engineStatus = true;
      speed += 10;
      print("Машина начала движение");
    }
    print("Текущая скорость машины: $speed");
    if (speed >= 70) {
      print("Вы превысили скорость!");
    }
  }

  @override
  void stop() {
    speed = 0;
    _engineStatus = false;
    print("Машина остановилась");
  }
}

class Bicycle extends Vehicle {
  double speed = 0.0;
  String color;
  bool engineStatus = false;

  Bicycle(this.color);

  @override
  void drive() {
    if (engineStatus) {
      speed +=5;
      print ("Велосипед движется со скоростью: $speed");
    } else {
      engineStatus = true;
      speed += 5;
      print ("Велосипед начал движение");
    }
  }

  @override
  void stop() {
    speed = 0;
    engineStatus = false;
    print("Велосипед остановился");
  }
}

void main() {
  Car car = Car("Желтый");
  Bicycle bicycle = Bicycle("Красный");

  car.drive();
  car.drive();
  car.drive();
  car.drive();
  car.stop();

  bicycle.drive();
  bicycle.drive();
  bicycle.stop();
}