import 'package:flutter/material.dart';


class QuizScreen extends StatefulWidget {

  const QuizScreen({Key? key}) : super(key: key);

  @override
  State<QuizScreen> createState() => _QuizScreenState();

}

class _QuizScreenState extends State<QuizScreen> {

  int _selectedIndex = 0;

  static const List<Widget> _titleOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: TextStyle(fontWeight: FontWeight.bold)
    ),
    Text(
      'Index 1: Business',
      style: TextStyle(fontWeight: FontWeight.bold)
    ),
    Text(
      'Index 2: School',
      style: TextStyle(fontWeight: FontWeight.bold)
    )
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _titleOptions.elementAt(_selectedIndex),
        elevation: 10,
        actions: <Widget>[
          IconButton(
            onPressed: () {}, 
            icon: const Icon(Icons.question_answer_rounded),
            tooltip: 'github: @luan593'
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.attach_money_sharp),
            label: 'Business'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school_rounded),
            label: 'School'
          )
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.indigo,
        onTap: _onItemTapped,
      ),
    );
  }
}