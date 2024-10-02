void main() {
  int result;
  double resultDouble = 5 / 5;
  result = 5 ~/
      2; //int result without decimal places not round anything,truncate division
  print(result);

  int x = 5;
  print(x++); //5->6
  print(x); //6
  x += 5; //x=x+5;
  print(x);

  //relational  boolean opertors
  print(5 == 10);
  print(5 != 10);
  print(5 >= 10);
  print(5 <= 10);

  String myString = 'hello ' + 'world'; //string concatenation
  String myString2 = 'hello ' + false.toString();
  print(myString);
  print(myString2);

  //string interpolation
  print("hi $myString");

  //string concatenation
  String cat = "string " + "concatenation";
  print(cat);

  String myExpression = "hello ${5 + 5 - 9 * 2}";
  print(myExpression);

  int b = 10, c = 3;
  print(b ~/ 3);
}
