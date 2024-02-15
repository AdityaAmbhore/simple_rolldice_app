import 'package:flutter/material.dart';
import 'secondpage.dart';

var starAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;

class Sample extends StatelessWidget {
  const Sample({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: starAlignment,
                  end: endAlignment,
                  colors:  const [
                    Colors.deepPurple,
                    Colors.pink,
                    Colors.tealAccent])),
          child: const SecondPage() ,
        ),
      ),
    );
  }
}

