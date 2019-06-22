import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    );
  }
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  @override
  var num_1 = 1;
  var num_2 = 1;
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              child: Image.asset(
                'images/dice$num_1.png',
              ),
              onPressed: () {
                Role_Dice();
              },
            ),
          ),
          Expanded(
            child: FlatButton(
              child: Image.asset(
                'images/dice$num_2.png',
              ),
              onPressed: () {
                Role_Dice();
              },
            ),
          )
        ],
      ),
    );
  }

  void Role_Dice() {
    setState(() {
      num_1 = Random().nextInt(6) + 1;
      num_2 = Random().nextInt(6) + 1;
    });
  }
}
