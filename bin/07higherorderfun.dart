void main(List<String> args) {
  //fun can be pass fun to other fun,  return fun from other fun..funtional programming ..dart oops
  //higher order funs

  // int plusFive(int x) {
  //   return x + 5;
  // }
  //block body to lambda expression body

  //print(plusFive(3)); //8

  final twicePlusFive = twiceIt((x) => x + 5); //it not returns int..
  final result = twicePlusFive(3); //3+5+5=13
  print(result);
}

typedef IntTransformer = int Function(int);

IntTransformer twiceIt(IntTransformer f) {
  return (int x) {
    return f(f(x));
  };
}

//return fun

int Function(int) twice(int Function(int) f) {
  //parameter -f->type function
  //return g;
  return (int x) {
    return 1;
  };
}

int g(int x) {
  return 1;
}
