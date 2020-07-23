import 'package:flutter/material.dart';
import '../models/dummyData.dart';
import '../widgets/subject_item.dart';

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
      body: GridView(
        padding: const EdgeInsets.all(20),
        children: subjects
            .map((sub) => SubjectItem(sub.subjectName, sub.subjectNotes))
            .toList(),
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
