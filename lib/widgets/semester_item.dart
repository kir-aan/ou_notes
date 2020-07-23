import 'package:flutter/material.dart';
import '../pages/subjects_page.dart';

class SemesterItem extends StatelessWidget {
  final int semester;

  SemesterItem(this.semester);

  void semesterSelected(BuildContext ctx) {
    Navigator.of(ctx).push(
      MaterialPageRoute(
        builder: (_) {
          return SubjectsPage();
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => semesterSelected(context),
      splashColor: Theme.of(context).splashColor,
      borderRadius: BorderRadius.circular(15),
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Card(
          // padding: const EdgeInsets.all(10),
          child: Center(
            child: Text(
              "Sem-${semester.toString()}",
              style: Theme.of(context).textTheme.headline2,
            ),
          ),
          elevation: 20,
        ),
      ),
    );
  }
}
