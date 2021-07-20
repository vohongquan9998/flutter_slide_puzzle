import 'package:flutter/material.dart';

class Time extends StatelessWidget {
  int second;
  Time({this.second});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Time:${second}',
      style: TextStyle(
          fontSize: 25.0,
          color: Colors.amber[900],
          fontWeight: FontWeight.bold,
          decoration: TextDecoration.none),
    );
  }
}
