import 'package:flutter/material.dart';
import 'package:faker/faker.dart';
import 'person_item.dart';

class App extends StatelessWidget {
  App({Key? key});

  final List<Map<String, dynamic>> myList = List.generate(10, (index) {
    return {
      'Name': faker.person.name(),
      'Age': faker.randomGenerator.integer(70),
      'favSport': List.generate(10, (index) => faker.sport.name()),
    };
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Person List'),
        ),
        body: ListView(
          children: myList.map(
            (data) {
              return PersonItem(data: data);
            },
          ).toList(),
        ),
      ),
    );
  }
}
