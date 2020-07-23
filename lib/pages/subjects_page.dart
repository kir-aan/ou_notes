import 'package:flutter/material.dart';
import '../models/dummyData.dart';

class SubjectsPage extends StatelessWidget {
  final int semester;
  final String branchID;
  // final List<String> subjectNotes;
  SubjectsPage({this.semester, this.branchID});

  @override
  Widget build(BuildContext context) {
    final subjects = DUMMY_SUBJECTS
        .where(
            (sub) => (sub.branchID == branchID) && (sub.semester == semester))
        .toList();
    return Scaffold(
      appBar: AppBar(
        title: Text("SEM-$semester"),
      ),
      body: Center(child: Text("${subjects[0].subjectName}")),
    );
  }
}
