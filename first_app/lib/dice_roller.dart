import 'dart:math';
import 'package:flutter/material.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 1;

  void rollDice() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      Image.asset(
        'assets/dice-$currentDiceRoll.png',
        width: 200,
      ),
      const SizedBox(height: 40),
      ElevatedButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
              textStyle: const TextStyle(color: Colors.black45, fontSize: 48)),
          child: const Text('Roll dice!')),
    ]);
  }
}
