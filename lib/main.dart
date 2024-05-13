import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lesson_34/pages/first_page.dart';
import 'package:lesson_34/pages/second_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SecondPage(),
    );
  }
}
