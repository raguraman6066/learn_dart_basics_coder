void main() {
  //variable container
  String myString = "Hello world";
  print(myString);
  print(myString.contains("Hello"));
  //int - no long and float in dart
  int myInteger = 5;
  print(myInteger.toString());
  print(myInteger.isEven);
  double myDouble = 5.5;
  print(myDouble.toString());

  //both int and double inherit from- num
  num myNumber = 5.5;
  print(myNumber); //not recommended to use

  bool myBool = false;
  //myBool="hello";//failed

  //dynamic can be anything
  dynamic mySomething = 5;
  print(mySomething);
  mySomething = "hello";
  print(mySomething);

//var - reassign and type inference
  var myTypeInference = "hello world";
  print(myTypeInference.contains("world"));
  myTypeInference = "hi buddy";
  print(myTypeInference); //reassign with var

//final
  final setOneTime = "good";
  print(setOneTime);

  //string
  String myName;
  myName = "coder";

  var myVarDeclared; // dynamic type if we not initialized
  myVarDeclared = 45;
  myVarDeclared = "hi";
  print(myVarDeclared);

  final String goodName;
  goodName = "flutter dev";
  print(goodName);

  final String goodName2;
  //print(goodName2); //non nullable must be initialized before used
}
