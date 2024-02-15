import 'dart:math';

import 'package:flutter/material.dart';

var randmizer = Random();
class SecondPage extends StatefulWidget {
  const SecondPage({super.key});
  @override
  State<SecondPage> createState() {
    return _SecondPage();
  }
}

class _SecondPage extends State<SecondPage> {
  var curentdicenum = 2;
  void rolldice() {
    setState(() {
      curentdicenum = randmizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          'assetes/images/dice-$curentdicenum.png',
          width: 200,
        ),
        TextButton(
            onPressed: rolldice,
            style: TextButton.styleFrom(
              padding: const EdgeInsets.only(top: 40),
              foregroundColor: Colors.black,
            ),
            child: const Text(
              'Click Here',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ))
      ],
    );
  }
}

