import 'package:flutter/material.dart';

class GridButton extends StatelessWidget {
  Function click;
  String name;
  Color color;
  GridButton({this.click, this.name, this.color});

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      elevation: 6.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          30,
        ),
      ),
      color: color,
      onPressed: click,
      child: Text(
        name,
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
