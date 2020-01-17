import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.redAccent,
        appBar: AppBar(
          title: Center(
              child: Text('Dicee',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontFamily: 'Pacifico'))),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var leftDiceFace = 1;
  var rightDiceFace = 1;

  void changeFace() {
    setState(() {
      leftDiceFace = Random().nextInt(6) + 1;
      rightDiceFace = Random().nextInt(6) + 1;
    });
  }

  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              padding: EdgeInsets.all(5.0),
              onPressed: () {
                changeFace();
              },
              child: Image.asset('images/dice$leftDiceFace.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              padding: EdgeInsets.all(5.0),
              onPressed: () {
                changeFace();
              },
              child: Image.asset('images/dice$rightDiceFace.png'),
            ),
          ),
        ],
      ),
    );
  }
}
