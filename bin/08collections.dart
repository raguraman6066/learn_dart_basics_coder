void main(List<String> args) {
  //store multiple elements
  List<int> list = [1, 2, 3, 4, 5]; //no array , only list
  print(list.length);
  print(list[2]);
  final mylist2 = [1, 'hi'];

  <int>[1, 2, 3]; //list literals

  Map<String, String> myMap = {"1": "one", "2": "two"};
  print(myMap["1"]);
  //map is set of key value pairs

  Set mySet = {1, 2, 3, 2};
  print(mySet); //same as list, not contains duplicates

  final name = ["john", "kiran", "matthew", "anu"];
  final nameLength =
      name.map((name) => name.length).toList(); //change name of list
  print(nameLength); //iterables or lists

  final nameWhere = name.where((name) => name.length > 3).toList();
  print(nameWhere);

  for (int i = 0; i < nameWhere.length; i++) {
    print(nameWhere[i]);
  }
  print("-----");

  for (var element in nameWhere) {
    print(element);
  }
  print("-----");

  // nameWhere.forEach((element) => print(element));
  nameWhere.forEach(print);

  print("======");

  bool isSignedIn = true;

  <String>[
    "this is fake content",
    if (isSignedIn) "sign out" else "sign in",
  ];

  final x = <String>[
    for (int i = 0; i < 5; i++) i.toString(),
    for (final num in [11, 12, 13]) num.toString()
  ];
  print(x);

  final list1 = [1, 2, 3];
  final list2 = [4, 5, 6];
  final list3 = [0, ...list1, ...list2];
  print(list3);
}
