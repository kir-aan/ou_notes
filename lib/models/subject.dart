import 'package:flutter/foundation.dart';

class Subject {
  final String id;
  final String subjectName;
  final List<String> subjectNotes;
  const Subject({
    @required this.id,
    @required this.subjectName,
    @required this.subjectNotes,
  });
}
