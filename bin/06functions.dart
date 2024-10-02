void main(List<String> args) {
  String returnString() {
    //nested fun ..valid..call within this fun
    return "Hello";
  }

  print(returnString());
}

//fun use to set scope variable or funs

String returnString() {
  //top level funs declare outside of fun or class
  return "Hello";
}

void otherFunctions() {
  returnString();
}

void positionalParams(int x, double y, String z) {
  positionalParams(
      2, 2.5, "hi"); //must provide all values with same order as declared
  //when you call fun if you pass that as arguments
}

void optionalPositinalParams(int x, int y, [int z = 0]) {
  optionalPositinalParams(4, 5, 6);
}

void namedOptinalParams({int? x, int? y, int z = 0}) {
  //in named params , we set optional params with ? or value
  namedOptinalParams(y: 2, x: 9);
}

void namedRequriedParams(int positional,
    {required x, required int y, required int z}) {
  namedRequriedParams(12, x: 2, z: 3, y: 9);
}
