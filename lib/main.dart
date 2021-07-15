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

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      // TODO Виджет Row располагает элементы горизонтально, в виде строки.
      // https://metanit.com/dart/flutter/2.8.php
      children: <Widget>[
        Expanded(
          // TODO Контейнер Expanded позволяет своему вложенному виджету child заполнить доступное пространство (или его часть) других контейнеров - Row и Column.
          // https://metanit.com/dart/flutter/2.9.php
          child: Image.asset('images/dice1.png'),
        ),
        Expanded(
          child: Image.asset('images/dice2.png'),
        ),
      ],
    );
  }
}
