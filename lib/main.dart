import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Center(
          child: Text(
            'dice',
            style: TextStyle(color: Colors.white, fontSize: 30.0),
          ),
        ),
      ),
      body: const Dice(),
    ),
  ));
}
class Dice extends StatefulWidget {
  const Dice({super.key});


  @override
  State<Dice> createState() => _DiceState();
}
class _DiceState extends State<Dice> {
  int left = 1;
  int right = 1;
  void changeNum(){
    setState(() {
        left= Random().nextInt(6)+1;
        right = Random().nextInt(6)+1;
    });

  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                changeNum();
              },
              child: Image.asset('images/dice$left.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  changeNum();
                });
              },
              child: Image.asset('images/dice$right.png'),
            ),
          )
        ],
      ),
    );
  }
}

