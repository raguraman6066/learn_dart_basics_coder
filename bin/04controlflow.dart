void main() {
  //use for logic
  final myInt = 5;
  //first true statement only execute .
  if (myInt == 10) {
    print("it's ten!");
  } else if (myInt == 5) {
    print("it's five!");
  } else if (myInt > 20) {
    print("it's not");
  } else {
    print("something else");
  }

  switch (myInt) {
    case 1:
      print("one");
      break;
    case 2:
      print("two");
      break;
    case 3:
      print("three");
      break;
    case 4:
      print("four");
      break;
    case 5:
      print("five");
      break;
    default:
      print("default");
  }
}


//if more conditions comes in if else if use switch 