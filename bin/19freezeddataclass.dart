import 'package:freezed_annotation/freezed_annotation.dart';
part '19freezeddataclass.freezed.dart';

void main(List<String> args) {
  final person = Person(name: "demo", age: 123);
  final person2 = person.copyWith(age: 15);
  print(person2.age);
}

@freezed
class Person with _$Person {
  const Person._();
  const factory Person({
    required String name,
    required int age,
  }) = _Person;
}
// dart run build_runner watch --delete-conflicting-outputs