import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_slide_puzzle/widgets/footer.dart';
import 'package:flutter_slide_puzzle/widgets/grid.dart';
import 'package:flutter_slide_puzzle/widgets/menu.dart';
import 'package:flutter_slide_puzzle/widgets/tile.dart';

class Broad extends StatefulWidget {
  @override
  _BroadState createState() => _BroadState();
}

class _BroadState extends State<Broad> {
  var num = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15];
  int move = 0;
  int second = 0;
  Color color;
  Timer timer;
  static const duration = const Duration(seconds: 1);
  bool isActive = false;

  @override
  void initState() {
    super.initState();
    num.shuffle();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    if (timer == null) {
      timer = Timer.periodic(duration, (timer) {
        startTimer();
      });
    }
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: size.height,
          color: Colors.amber[800],
          child: Column(
            children: <Widget>[
              MyTile(
                size: size,
              ),
              Menu(
                move: move,
                second: second,
              ),
              SizedBox(
                height: 40,
              ),
              Grid(
                number: num,
                size: size,
                onclick: clickonGrid,
                color: Colors.white,
              ),
              FooterButton(
                reset: OnReset,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void clickonGrid(index) {
    if (second == 0) {
      isActive = true;
    }
    if (index - 1 >= 0 && num[index - 1] == 0 && index % 4 != 0 /*To left*/ ||
        index + 1 < 16 &&
            num[index + 1] == 0 &&
            (index + 1) % 4 != 0 /*To right*/ ||
        index + 4 < 16 && num[index + 4] == 0 /*To bottom*/ ||
        index - 4 >= 0 && num[index - 4] == 0 /*To top*/) {
      setState(() {
        num[num.indexOf(0)] = num[index];
        num[index] = 0;
        move++;
      });
    }

    checkIfwin();
  }

  void OnReset() {
    setState(() {
      num.shuffle();
      move = 0;
      isActive = false;
      second = 0;
    });
  }

  void startTimer() {
    if (isActive) {
      setState(() {
        second++;
      });
    }
  }

  bool isSort(List list) {
    int prev = list.first;
    for (var i = 1; i < list.length - 1; i++) {
      int next = list[i];
      if (prev > next) return false;
      prev = next;
    }
    return true;
  }

  void checkIfwin() {
    if (isSort(num)) {
      isActive = false;
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return Dialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: Container(
                height: 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'You win',
                      style: TextStyle(
                        fontSize: 50.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 50,
                      child: RaisedButton(
                        color: Colors.blue,
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          'Close',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          });
    }
  }
}
