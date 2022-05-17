void main(List<String> arguments) {
  //1
  List list = [1, 2, 3, 4, 5, 6, 3];
  funcOne(list: list);
  //2
  List<int> list1 = [1, 2, 3, 4, 0, 5, 5, 7];
  funcTwo(list1: list1);
  //3
  List<int> list2 = [1, 5, 3, 2, 2, 5, 6, 1, 2, 3];
  funcThree(list2: list2);
  //4
  List<dynamic> list3 = [1, '2', true, 1, 4, false, 'qwerty'];
  funcFour(list3: list3);
}
//1
void funcOne({required List list}) {
  int previus = 0;
  bool isContains = false;
  list.forEach((e) {
    list.sort();
    if (e == previus) {
      isContains = true;
    }
    previus = e;
  });
  if (isContains) {
    print('Да');
  } else {
    print('Нет');
  }
}
//2
void funcTwo ({required List<int> list1}) {
  int sum = 0;
  list1.forEach((e) {
    sum += e;
  });
  print(sum / list1.length);
}
//3
void funcThree ({required List<int> list2}) {
  int count = 0;
  list2.forEach((e) {
    count++;
  });
  print(count);
}
//4
void funcFour ({required List<dynamic> list3}) {
  List<Type> types = [];
  list3.forEach((e) {
    types.add(e.runtimeType);
  });
  print(types);
}
