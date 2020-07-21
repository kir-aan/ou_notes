import 'package:flutter/material.dart';

class SemesterPage extends StatelessWidget {
  final String branchID;
  final String branchName;
  SemesterPage(this.branchID, this.branchName);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(branchName),
      ),
      body: Center(
        child: Text('${branchName} Selected'),
      ),
    );
  }
}
