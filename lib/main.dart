import 'package:flutter/material.dart';
import 'package:quizapp/screens/quiz_screen.dart' as quiz_screen;


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo
      ),
      title: 'QuizApp',
      home: const quiz_screen.QuizScreen()
    );
  }

}