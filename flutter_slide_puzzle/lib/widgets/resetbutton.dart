import 'package:flutter/material.dart';

class ResetButton extends StatelessWidget {
  Function reset;
  ResetButton({this.reset});

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: reset,
      color: Colors.blue[800],
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Text(
        'New Game',
        style: TextStyle(
          color: Colors.white,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
