class CustomMath {
  num add(num a, num b) {
    num res = a + b;
    print("Результат сложения числа $a и числа $b равен $res");
    return res;
  }

  num subt(num a, num b) {
    num res = a - b;
    print("Результат вычитания числа $b из числа $a равен $res");
    return res;
  }

  num multiply(num a, num b) {
    num res = a * b;
    print("Результат умножения числа $a на число $b равен $res");
    return res;
  }

  num div(num a, num b) {
    num res = a / b;
    print("Результат деления числа $a на число $b равен $res");
    return res;
  }

  num compare(num a, num b) {
    num res;
    if (a > b) {
      res = a;
      print("Число $a больше числа $b");
    } else {
      res = b;
      print("Число $b больше числа $a");
    }
    return res;
  }

}

void main() {
  CustomMath math = CustomMath();
  math.add(2,3);
  math.subt(5.5, 4);
  math.multiply(4, 2.5);
  math.div(10, 3);
  math.compare(5, 5.1);
}