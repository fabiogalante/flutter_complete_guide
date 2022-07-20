import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionsIndex = 0;
  void answerQuestion() {
    setState(() {
      questionsIndex = questionsIndex + 1;
    });

    print(questionsIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s is your favorite color?',
      'What\'s is your favorite animal?'
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: const Text('AppBar Text')),
        ),
        body: Center(
          child: Column(
            children: [
              Text(questions[questionsIndex]),
              ElevatedButton(
                child: Text('Answer 1'),
                onPressed: answerQuestion,
              ),
              ElevatedButton(
                child: Text('Answer 2'),
                onPressed: () => print('Answer 2 pressed'),
              ),
              ElevatedButton(
                child: Text('Answer 3'),
                onPressed: () {
                  print('Anser 3 pressed');
                },
              ),
            ],
          ),
        ),
      ),
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
