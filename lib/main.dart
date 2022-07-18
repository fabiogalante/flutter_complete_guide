import 'package:flutter/material.dart';

void main() {
  Person p = Person(age: 51, name: "Fabio");

  print(p.age);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Text('Hello'),
    );
  }
}

class Person {
  String? name;
  int? age;

  // Person(String inputName, int inputAge) {
  //   age = inputAge;
  //   name = inputName;
  // }

  //Argumentos nomeados
  Person({this.name, this.age});
}
