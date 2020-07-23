import 'package:flutter/material.dart';
import './pages/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OU Notes',
      theme: ThemeData(
        primaryColor: Colors.black,
        splashColor: Colors.black,
        cardColor: Color.fromRGBO(197, 219, 212, 1),
        accentColor: Colors.black,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'RobotoCondensed',
        textTheme: ThemeData.light().textTheme.copyWith(
            bodyText1: TextStyle(
              color: Colors.green[900],
            ),
            bodyText2: TextStyle(
              color: Colors.blueGrey[700],
            ),
            headline1: TextStyle(
              fontSize: 50,
              fontFamily: 'RobotoCondensed',
              fontWeight: FontWeight.w700,
            ),
            headline2: TextStyle(
              fontSize: 40,
              color: Colors.grey[850],
              fontFamily: 'RobotoCondensed',
              fontWeight: FontWeight.w300,
            )),
      ),
      home: LoginPage(),
    );
  }
}
