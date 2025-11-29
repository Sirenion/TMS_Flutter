
import 'dart:math';

abstract class Shape {
  void area();
  void perimeter();
}

class Circle extends Shape {
  double radius;
  final double pi = 3.14;
  Circle(this.radius);

  @override
  void perimeter() {
    double per = 2 * pi * radius;
    print ("Периметр круга равен $per");
  }

  @override
  void area() {
    double ar = pi * radius * radius;
    print("Площадь круга равна $ar");
  }
}

class Rectangle extends Shape {
  double length;
  double width;
  Rectangle(this.length, this.width);

  @override
  void perimeter() {
    double per = (length + width) * 2;
    print("Периметр прямоугольника равен $per");
  }

  @override
  void area() {
    double ar = length * width;
    print("Площадь прямоугольника равна $ar");
  }
}

class Triangle extends Shape {
  double a;
  double b;
  double c;
  Triangle(this.a, this.b, this.c);

  @override
  void perimeter() {
    double per = a + b + c;
    print("Периметр треугольника равен $per");
  }

  @override
  void area() {
    double halfper = (a + b + c)/2;
    double ar = sqrt(halfper * (halfper - a) * (halfper - b) * (halfper - c));
    print("Площадь треугольника равна $ar");
  }
}


void main() {
  List<Shape> figures = [Circle(5), Rectangle(3,4), Triangle(3,3,3)];

  for (var i in figures) {
    i.perimeter();
    i.area();
  }
}