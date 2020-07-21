import 'package:flutter/material.dart';
import '../models/semseter_item.dart';

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
      body: GridView(
        padding: const EdgeInsets.all(20),
        children:
            [1, 2, 3, 4, 5, 6, 7, 8].map((sem) => SemesterItem(sem)).toList(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 40,
          crossAxisSpacing: 20,
          childAspectRatio: 3 / 2,
        ),
      ),
    );
  }
}
