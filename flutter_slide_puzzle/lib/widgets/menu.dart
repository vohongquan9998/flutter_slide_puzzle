import 'package:flutter/material.dart';
import 'package:flutter_slide_puzzle/widgets/move.dart';
import 'package:flutter_slide_puzzle/widgets/resetbutton.dart';
import 'package:flutter_slide_puzzle/widgets/time.dart';

class Menu extends StatelessWidget {
  int move;
  int second;
  Menu({this.move, this.second});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width * .4,
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black45,
                    blurRadius: 10,
                    spreadRadius: 1,
                    offset: Offset(0, 10),
                  ),
                ]),
            child: Center(child: Move(move: move)),
          ),
          Container(
            width: MediaQuery.of(context).size.width * .4,
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black45,
                    blurRadius: 10,
                    spreadRadius: 1,
                    offset: Offset(0, 10),
                  ),
                ]),
            child: Center(child: Time(second: second)),
          ),
        ],
      ),
    );
  }
}
