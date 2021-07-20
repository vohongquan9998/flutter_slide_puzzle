import 'package:flutter/material.dart';

class MyTile extends StatelessWidget {
  var size;

  MyTile({this.size});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * .08,
      padding: EdgeInsets.all(5),
      child: Text(
        'Slide Puzzle Game',
        style: TextStyle(
            fontSize: 30.0,
            color: Colors.white,
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.none),
      ),
    );
  }
}
