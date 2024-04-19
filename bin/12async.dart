import 'dart:async';

import 'package:http/http.dart';

Future<void> main(List<String> args) async {
  //sync - run immediatly
  //async - takes time remove api

/*
  try {
    final result = await Client()
        .get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));

    print(result.body);
  } catch (e) {
    print(e);
  }
  */

  Client()
      .get(Uri.parse("https://jsonplaceholder.typicode.com/posts"))
      .then((response) => print(response.body))
      .catchError((e) => print(e));

  //future async- one time
  //stream async- multiple time thing
  final mPeriodicStream = Stream.periodic(Duration(seconds: 1)); //create stream
  final subscription = mPeriodicStream.listen((event) {
    //subscription
    print("a second has passed");
  });
  await Future.delayed(Duration(seconds: 3));
  subscription.cancel();

  print("+++++++++++++++++");

  [1, 2, 3];
  createMessageStream().listen((event) {
    print(event);
  });
  createMessageStream().map((msg) => msg.toUpperCase()).listen((event) {
    print(event);
  });
}

//multiple res over time
Stream<String> createMessageStream() async* {
  //*async generator fun-return stream
  //yield -return without terminating  fun
  yield 'hello';
  await Future.delayed(Duration(seconds: 1));
  yield "have you heard of..";
  await Future.delayed(Duration(seconds: 1));
  yield "flutter..";
}
