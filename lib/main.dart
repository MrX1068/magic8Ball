import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BallChange(),
      ),
    );

class BallChange extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        shadowColor: Colors.white,
        backgroundColor: Colors.blue.shade900,
        title: Text(
          'Ask Me Everything',
          style: TextStyle(
            color: Colors.cyanAccent.shade700,
            fontWeight: FontWeight.bold,
            letterSpacing: 2.0,
          ),
        ),
      ),
      body: BallBody(),
    );
  }
}

class BallBody extends StatefulWidget {
  @override
  _BallBodyState createState() => _BallBodyState();
}

class _BallBodyState extends State<BallBody> {
  int ballNumbers = 1;
  void getBallAnswers() {
    ballNumbers = Random().nextInt(5) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        child: Image.asset("images/ball$ballNumbers.png"),
        onPressed: () {
          setState(() {
            getBallAnswers();
            print(ballNumbers);
          });
        },
      ),
    );
  }
}
