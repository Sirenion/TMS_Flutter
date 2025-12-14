class CustomList {
  List<int> filterEvenNumbers (List<int> list) {
    List<int> workList = [];
    for (int item in list) {
      if (item.isEven) {
        workList.add(item);
      }
    }
    return workList;
  }

  List<Student> sortStudentsByGPA(List<Student> students) {
    List<Student> workList = students;
    workList.sort((a, b) => b.gpa.compareTo(a.gpa));
    return workList;
  }

  void printStudents(List<Student> students) {
    for (Student st in students) {
      print("${st._name}  ${st._age}  ${st.gpa} \n");
    }
  }
}

class Student {
  String _name;
  int _age;
  num gpa;

  Student(this._name, this._age, this.gpa);
}

void main() {
  List<int> list = [1, 2, 4, 5];
  List<Student> stList = [Student("St A", 25, 5), Student("St B", 25, 4.5), Student("St C", 25, 8.2)];
  CustomList cl = CustomList();
  print(list);
  list = cl.filterEvenNumbers(list);
  print(list);

  cl.printStudents(stList);
  stList = cl.sortStudentsByGPA(stList);
  cl.printStudents(stList);
}