import 'package:flutter/material.dart';

class Move extends StatelessWidget {
  int move;
  Move({this.move});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Move:${move}',
      style: TextStyle(
          fontSize: 25.0,
          color: Colors.amber[900],
          fontWeight: FontWeight.bold,
          decoration: TextDecoration.none),
    );
  }
}
