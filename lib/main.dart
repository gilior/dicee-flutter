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
        backgroundColor: Colors.purple,
        appBar: AppBar(
          title: Text('Dicee'),
//          backgroundColor: Colors.red,
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
  var num_1 = 1;
  var num_2 = 1;

  @override
  void initState() {
    // TODO: implement initState
    num_1 = Random().nextInt(5) + 1;
    num_2 = Random().nextInt(5) + 1;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              color: Colors.red.shade400,
              onPressed: () {
                setState(() {
                  num_1 = Random().nextInt(5) + 1;
                  num_2 = Random().nextInt(5) + 1;
                });
              },
              child: Text('Dicee'),
            ),
          ],
        ),
        Container(
          color: Colors.yellowAccent,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: RaisedButton(
                  child: Padding(
                    padding: const EdgeInsets.all(38.0),
                    child: Image(
                      image:
                          AssetImage('images/dice' + num_1.toString() + '.png'),
//              width: 100,
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      num_1 = Random().nextInt(5) + 1;
                    });
                  },
                ),
              ),
              Expanded(
                child: RaisedButton(
                  child: Padding(
                    padding: const EdgeInsets.all(38.0),
                    child: Image(
                      image:
                          AssetImage('images/dice' + num_2.toString() + '.png'),
//              width: 100,
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      num_2 = Random().nextInt(5) + 1;
                    });
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
