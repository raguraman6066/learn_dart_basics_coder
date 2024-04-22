// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:meta/meta.dart';

void main(List<String> args) {
  final person = Person(name: "jio", age: 123);

  final person1Updated = Person(name: person.name, age: person.age + 1);
  print(person1Updated.name);
  final person2 = person.copyWith(age: person.age + 2);
  print(person2.name);
  print(person2.age);
}

//dart data class generator extension
@immutable
class Person {
  final String name;
  final int age;
  Person({
    required this.name,
    required this.age,
  });
//create method..accept construtor
  Person copyWith({
    String? name,
    int? age,
  }) {
    return Person(
      name: name ?? this.name,
      age: age ?? this.age,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'age': age,
    };
  }

  factory Person.fromMap(Map<String, dynamic> map) {
    return Person(
      name: map['name'] as String,
      age: map['age'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory Person.fromJson(String source) =>
      Person.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Person(name: $name, age: $age)';

  @override
  bool operator ==(covariant Person other) {
    if (identical(this, other)) return true;

    return other.name == name && other.age == age;
  }

  @override
  int get hashCode => name.hashCode ^ age.hashCode;
}
