// A higher-order function is a function that
//either takes one or more functions as
//parameter or returns a function as its result.

// Define a type alias for better readability
typedef Operation = int Function(int a, int b);

//----------------

// Higher-order function that takes two integers and a function as parameters
int performOperation(int a, int b, int Function(int, int) operation) {
  return operation(a, b);
}

void main(List<String> args) {
  int result = performOperation(1, 2, (p0, p1) => p0 + p1);
  print(result);
}



/*

// Define a type alias for better readability
typedef Operation = int Function(int a, int b);

// Higher-order function that takes two integers and an operation function
int performOperation(int a, int b, Operation op) {
  return op(a, b);
}

// Some basic operations
int add(int a, int b) => a + b;
int subtract(int a, int b) => a - b;
int multiply(int a, int b) => a * b;

void main() {
  int x = 10;
  int y = 5;

  // Using the higher-order function with different operations
  int sum = performOperation(x, y, add);
  print('Sum: $sum'); // Output: Sum: 15

  int difference = performOperation(x, y, subtract);
  print('Difference: $difference'); // Output: Difference: 5

  int product = performOperation(x, y, multiply);
  print('Product: $product'); // Output: Product: 50

  // Using an anonymous function (lambda)
  int quotient = performOperation(x, y, (a, b) => a ~/ b);
  print('Quotient: $quotient'); // Output: Quotient: 2
}

 */