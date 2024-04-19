void main(List<String> args) {
  //call multiple times when count is known
  for (var i = 0; i <= 5; i++) {
    print("num $i");
  }

  //not sure how many times need to repeat
  int i = 6;
  while (i <= 10) {
    print("num $i");
    i++;
  }

  int j = 11;
  do {
    print(("num $j"));
    j++;
  } while (j <= 15);
}
