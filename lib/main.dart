import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Center(child: Text('Ask Me Anything')),
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;
  void doMagic() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }

  Widget build(BuildContext context) {
    return Center(
        child: FlatButton(
            onPressed: () {
              doMagic();
            },
            child: Image.asset('images/ball$ballNumber.png')));
  }
}
