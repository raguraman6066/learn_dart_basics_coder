void main(List<String> args) {
  final u1 = Admin("name").sendMessage();
  final chat = ChatBot("name").sendMessage();
}

mixin Message {
  void sendMessage() {
    print("sample msg");
  }
}

class User {
  final String name;
  User(this.name);
  // void sendMessage() {
  //   print("sample msg");
  // }
}

class Admin extends User with Message {
  Admin(super.name);
}

class ChatBot with Message {
  //cant extends user not have same constructor
  final String id;
  ChatBot(this.id);
  @override
  void sendMessage() {
    print("chat bot message");
    //super.sendMessage();
  }
}
