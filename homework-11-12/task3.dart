class CustomList {
  List<int?> check (List<int?> list) {
    List<int?> workList = list;
    for (int i = 0; i < workList.length; i++) {
      list[i] ??= 0;
    }
    return workList;
  }
}

void main() {
  List<int?> list = [null, 1, 2, 4, null, 5];
  CustomList cl = CustomList();
  print(list);
  list = cl.check(list);
  print(list);
}