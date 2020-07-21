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
        primarySwatch: Colors.grey,
        accentColor: Colors.deepOrange[400],
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("OU Notes"),
      ),
      body: Center(
        child: Text("OU NOTES HOMEPAGE"),
      ),
    );
  }
}
