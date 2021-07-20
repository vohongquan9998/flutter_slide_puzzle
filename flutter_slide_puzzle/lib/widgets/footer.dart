import 'package:flutter/material.dart';
import 'package:flutter_slide_puzzle/src/gamemenu.dart';
import 'package:flutter_slide_puzzle/widgets/resetbutton.dart';

class FooterButton extends StatelessWidget {
  Function reset;
  FooterButton({this.reset});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * .4,
            height: 100,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0.0, 10.0),
                    color: Colors.black45,
                    blurRadius: 10,
                    spreadRadius: 1,
                  )
                ]),
            child: IconButton(
              icon: Icon(
                Icons.arrow_back_outlined,
                color: Colors.amber[900],
                size: 40,
              ),
              onPressed: () {
                Navigator.of(context).push(PageRouteBuilder(
                    pageBuilder: (BuildContext context, _, __) => GameMenu()));
              },
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * .4,
            height: 100,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0.0, 10.0),
                    color: Colors.black45,
                    blurRadius: 10,
                    spreadRadius: 1,
                  )
                ]),
            child: IconButton(
              icon: Icon(
                Icons.refresh,
                color: Colors.amber[900],
                size: 40,
              ),
              onPressed: reset,
            ),
          ),
        ],
      ),
    );
  }
}
