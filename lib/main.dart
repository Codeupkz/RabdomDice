import 'dart:math';
import 'package:flutter/material.dart';
void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.lightGreenAccent,
        appBar: AppBar(
          title: const Text(
            'RandomDice',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.lightGreenAccent,
        ),
        body: DiceView(),
      ),
    ),
  );
}

class DiceView extends StatefulWidget {
  const DiceView({Key? key}) : super(key: key);

  @override
  State<DiceView> createState() => _DiceViewState();
}

class _DiceViewState extends State<DiceView> {
  var leftImageNumber = 1;
  var rightImageNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {setState(() {
                leftImageNumber = Random().nextInt(6)+1;
              });},
              child: Image(
                image: AssetImage('images/Dice-$leftImageNumber.png'),
              ),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {setState(() {
                rightImageNumber = Random().nextInt(6)+1;
              });},
              child: Image(
                image: AssetImage('images/Dice-$rightImageNumber.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
