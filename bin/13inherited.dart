import 'package:meta/meta.dart';

void main(List<String> args) {
  final admin =
      Admin(specialAdminField: 123, firstName: "john", lastName: "jie");
  print(admin.fullName);
  admin.signout();

  final user = admin as User;
  // user.specialAdminField; not available
  print(user.fullName);
  print(user is! Admin);

  if (user is Admin) {
    user.specialAdminField;
  }

  print("_______");

  // final user_admin = User.admin(true);
  // print(user_admin._firstName);
}

abstract class User {
  final String _firstName;
  final String _lastName;
  String get fullName => "$_firstName $_lastName";

  User(this._firstName, this._lastName);

  void myMethod();
/*
  factory User.admin(bool admin) {
    if (admin) {
      return Admin(
        specialAdminField: 123,
        firstName: "admin1",
        lastName: "admin2",
      );
    }*/

  //else {
  // return User(
  //   "user1 ",
  //   "user2",
  // );
  //use only in subclasses, cant use directly
  //}

  @mustCallSuper
  void signout() {
    print("signout");
  }
}

class Admin extends User {
  final double specialAdminField;
  Admin(
      {required this.specialAdminField,
      required String firstName,
      required String lastName})
      : super(firstName, lastName);

  @override
  String get fullName => "admin: ${super.fullName}";

  @override
  void signout() {
    print("performing admin-specific singout steps");
    super.signout();
  }

  @override
  void myMethod() {
    // TODO: implement myMethod
  }
}
