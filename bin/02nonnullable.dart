void main() {
  // String impossible = null;
  //not holding anything, before we can assign like this..now not 2.12 after
  String? impossible = null;
  String? impossible2; //null is default value in nullable varaible
  //impossible = "impossible";
  print(impossible?.length); //null ? null safe operator
  print(impossible!.length); //run time error , not safe
}
