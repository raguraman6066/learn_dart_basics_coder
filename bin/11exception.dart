void main(List<String> args) {
  try {
    final myInt = int.parse("12");
    // final myInt = int.parse("as");
    //format exception
    //other also comes together
    // throw MyCustomException();
    // throw Exception("put username");
    throw "put username";
    print(myInt);
  } catch (e) {
    print(e.toString());
  } finally {
    print("this code always runs");
  }
}

class MyCustomException implements Exception {
  @override
  String toString() {
    return "my custom exception";
  }
}
