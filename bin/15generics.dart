void main(List<String> args) {
  myMethod1(String a) {
    return "hi";
  }

  print(myMethod("hi"));
  print(myMethod(123));
  // myMethod(String name){
  //   return "hi";
  // }
}

abstract class DataReader<T> {
  //type
  T readData();
}

T myMethod<T>(T arg) {
  return arg;
}

// String myMethod1(String arg) {}

class IntegerData implements DataReader<int> {
  @override
  int readData() {
    return 1234;
  }
}

class StringData implements DataReader<String> {
  @override
  String readData() {
    return "hello";
  }
}
