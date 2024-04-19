void main(List<String> args) {
  // "hello".duplicate();
  // "hellohello"

  final x = "hello".duplicate();
  final y = x + x;
  print(x);

  print("ragu".sayHello());
}

extension StringDuplication on String {
  String duplicate() {
    return this + this;
  }

  String sayHello() {
    return "hi $this";
  }
}
