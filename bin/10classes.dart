void main(List<String> args) {
  User user1 = User(
      name: "hi",
      photoUrl:
          "http-img1"); //User() invoke constructor to initialize the object
  User user2 = const User(name: "hello", photoUrl: "http-img2");
  User user3 = const User(name: "hello", photoUrl: "http-img2");
  // print(user2.longName());
  print((user2 ==
      user3)); //give slight improvement in code..only one time initialized it after it reuse the same (SizedBox())
  print(user2.hashCode);
  print(user3.hashCode);
  print(user2.name);
  print(User.minNameLength);

  final x = Example(1, 2);
  print(x.public);

  NonInstantiatable nonInstantiatable = NonInstantiatable._();
  print(nonInstantiatable.num);

  print("++++++++");
  final usernew = NewUser(firstName: "hello", lastName: "world");
  print(usernew.getFullName);
  usernew.setEmail = "hiiij.com";
  print(usernew._email);
  print(usernew.email);
}

class User {
  //if final field declared in class after constructor initalized  it cant be changed
  final String? name; //instance member
  final String? photoUrl;

  // User(String name, String photoUrl) {
  //   this.name = name;
  //   this.photoUrl = photoUrl;
  // }
  // User({required this.name, required this.photoUrl}) {}
  const User({required this.name, required this.photoUrl});
  // required this.photoUrl}) :name = "$firstName $lastName";

  //fun within a class
  bool longName() {
    return name!.length > 5;
  }

  static const int minNameLength = 3;
}

class Example {
  int public;
  int _private;

  Example(this._private, this.public);
  Example.namedConstructor({required this.public, required int privateParam})
      : _private = privateParam;
}

class NonInstantiatable {
  NonInstantiatable._(); //private construcor.
  int num = 9;
}

class NewUser {
  final String firstName;
  final String lastName;
  String? _email;

  set setEmail(String mail) {
    if (mail.contains("@")) {
      _email = mail;
    } else {
      _email = null;
    }
  }

  String get email => _email ?? "not vaild";

  NewUser({required this.firstName, required this.lastName});

  String get getFullName => "$firstName $lastName"; //property
}
