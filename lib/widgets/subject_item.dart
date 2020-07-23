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
      borderRadius: BorderRadius.circular(10),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Theme.of(context).primaryColor,
              width: 2,
            ),
          ),
          child: ListTile(
            leading: Icon(Icons.folder),
            title: Text(subjectName),
            trailing: Text(subjectNotes.length.toString()),
          ),
        ),
      ),
    );
  }
}
