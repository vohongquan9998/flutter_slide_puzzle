import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_slide_puzzle/src/broad.dart';
import 'package:flutter_slide_puzzle/src/gamemenu.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  await SystemChrome.setEnabledSystemUIOverlays([]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GameMenu(),
    );
  }
}
