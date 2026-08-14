import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flashcard',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: Navigations(),
    );
  }
}

class Navigations extends StatelessWidget {
  const Navigations({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
