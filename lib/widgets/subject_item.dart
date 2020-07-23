import 'package:flutter/material.dart';

class SubjectItem extends StatelessWidget {
  final String subjectName;
  final List<String> subjectNotes;
  SubjectItem(this.subjectName, this.subjectNotes);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      splashColor: Theme.of(context).splashColor,
      borderRadius: BorderRadius.circular(15),
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Card(
          child: Center(
            child: Text(
              subjectName,
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ),
          elevation: 20,
        ),
      ),
    );
  }
}
