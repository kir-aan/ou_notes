import 'package:flutter/material.dart';
import 'package:ou_notes/pages/login_page.dart';

void main() {
  runApp(OUNotes());
}

class OUNotes extends StatefulWidget {
  @override
  _OUNotesState createState() => _OUNotesState();
}

class _OUNotesState extends State<OUNotes> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
      title: 'OU Notes',
    );
  }
}
