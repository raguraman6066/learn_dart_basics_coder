enum AccountType { free, premium, vip } //data type

void main(List<String> args) {
  AccountType accountType = AccountType.premium;
  print(accountType.name);
  print(accountType.index); //0,1,2
  print(AccountType.values[1].name);

  switch (accountType) {
    case AccountType.free:
      print("0 usd");
      break;
    case AccountType.premium:
      print("10  usd");
      break;
    default:
  }
}
