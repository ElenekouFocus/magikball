import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(Ballepage());
}

class Ballepage extends StatefulWidget {
  @override
  State<Ballepage> createState() => _BallepageState();
}

class _BallepageState extends State<Ballepage> {
  // This widget is the root of your application.
  int balleNumber = 1;
  void randomgenerator() {
    balleNumber = Random().nextInt(5) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF3158AB),
          title: Center(
            child: Text(
              'Ask me anything',
              style: TextStyle(
                fontFamily: 'Dancing',
              ),
            ),
          ),
        ),
        backgroundColor: const Color(0xFF4CA2F5),
        body: Center(
          child: TextButton(
              onPressed: () {
                setState(() {
                  randomgenerator();
                  debugPrint('$balleNumber');
                });
              },
              child: Image(
                image: AssetImage('images/ball$balleNumber.png'),
              )),
        ),
      ),
    );
  }
}
