import 'package:flutter/foundation.dart';

class Subject {
  final String branchID;
  final int semester;
  final String subjectID;
  final String subjectName;
  final List<String> subjectNotes;
  const Subject({
    @required this.branchID,
    @required this.semester,
    @required this.subjectID,
    @required this.subjectName,
    @required this.subjectNotes,
  });
}
