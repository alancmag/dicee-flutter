import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.blueAccent,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftNumber = 1, rightNumber = 1;
  void geraRandom() {
    setState(() {
      leftNumber = Random().nextInt(6) + 1;
      rightNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: FlatButton(
                  onPressed: geraRandom,
                  child: Image.asset('images/dice$leftNumber.png'),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: geraRandom,
                  child: Image.asset('images/dice$rightNumber.png'),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(30),
            child: Text(
              'Total: ${leftNumber + rightNumber}',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 44,
              ),
            ),
          )
        ],
      ),
    );
  }
}
