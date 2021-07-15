import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text(
            'Dicee',
          ),
          backgroundColor: Colors.red,
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
  int leftDiceNumber = 3;
  int rightDiceNumber = 2;
  int maxDiceNumber = 6;

  int getRandomDiceNumber() => Random().nextInt(maxDiceNumber) + 1;
  void changeDice() {
    leftDiceNumber = getRandomDiceNumber();
    rightDiceNumber = getRandomDiceNumber();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        // TODO Виджет Row располагает элементы горизонтально, в виде строки.
        // https://metanit.com/dart/flutter/2.8.php
        children: <Widget>[
          Expanded(
            // TODO Контейнер Expanded позволяет своему вложенному виджету child
            //  заполнить доступное пространство (или его часть) других
            //  контейнеров - Row и Column.
            // https://metanit.com/dart/flutter/2.9.php
            child: TextButton(
              onPressed: () {
                setState(() {
                  changeDice();
                });
              },
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  changeDice();
                });
              },
              child: Image.asset('images/dice$rightDiceNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
