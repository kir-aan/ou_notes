import 'package:flutter/material.dart';
import './pages/branches_page.dart';

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
        primarySwatch: Colors.grey,
        accentColor: Colors.blueGrey,
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
            ),
      ),
      home: BranchesPage(),
    );
  }
}
