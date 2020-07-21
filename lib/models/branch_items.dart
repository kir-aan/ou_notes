import 'package:flutter/material.dart';
import '../pages/semesters_page.dart';

class BranchItem extends StatelessWidget {
  final String branchID;
  final String branchName;
  BranchItem(this.branchID, this.branchName);

  void selectBranch(BuildContext ctx) {
    Navigator.of(ctx).push(
      MaterialPageRoute(
        builder: (_) {
          return SemesterPage(branchID, branchName);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectBranch(context),
      splashColor: Theme.of(context).splashColor,
      borderRadius: BorderRadius.circular(15),
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Card(
          child: Center(
            child: Text(
              branchName,
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
        ),
      ),
    );
  }
}
