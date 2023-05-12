import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoll extends StatefulWidget {
  const DiceRoll({super.key});

  @override
  State<DiceRoll> createState() {
    return _DiceRollState();
  }
}

class _DiceRollState extends State<DiceRoll> {

  var currentDiceRoll = 2;

  void rollDice() {
    setState(() {
        currentDiceRoll = randomizer.nextInt(6) + 1;
    });
  }
  
  @override
  Widget build(context) {
    return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/dice-$currentDiceRoll.png',
                width: 200,
              ),
              const SizedBox(height: 20),
              TextButton(
                onPressed: rollDice, 
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.all(20),
                  foregroundColor: Colors.white, 
                  backgroundColor: const Color.fromARGB(22, 244, 215, 70),
                  textStyle: const TextStyle(fontSize: 18),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                    side: const BorderSide(color: Color.fromARGB(255, 92, 207, 249))
                  ),
                ),
                child: const Text('Roll the Dice'),
              ),
            ]  //
          );
  }
}