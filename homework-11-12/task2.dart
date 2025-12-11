class CustomConstructions {
  bool positive(num a) {
    bool res = false;
    if (a > 0) {
      print("Число $a положительное");
      res = true;
    } else if (a == 0) {
      print("Число $a - ноль");
    } else {
      print("Число $a отрицательное");
    }
    return res;
  }

  void cycle(int a, int b) {
    for (int i = a; i <= b; i++) {
      print (i);
    }
  }

  String dayOfWeek(int a) {
    String day;
    switch (a) {
      case 1: {
        day = "Понедельник";
        break;
      }
      case 2: {
        day = "Вторник";
        break;
      }
      case 3: {
        day = "Среда";
        break;
      }
      case 4: {
        day = "Четверг";
        break;
      }
      case 5: {
        day = "Пятница";
        break;
      }
      case 6: {
        day = "Суббота";
        break;
      }
      case 7: {
        day = "Воскресенье";
        break;
      }
      default: {
        day = "Выходной";
        break;
      }
    }
    print (day);
    return day;
  }
}

void main() {
  CustomConstructions cust = CustomConstructions();
  cust.positive(2);
  cust.positive(-4.5);
  cust.cycle(1,10);
  cust.dayOfWeek(5);
  cust.dayOfWeek(10);
}