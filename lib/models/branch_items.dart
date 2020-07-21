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
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Text(
          branchName,
          style: Theme.of(context).textTheme.headline1,
          textAlign: TextAlign.center,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
            colors: [
              Theme.of(context).accentColor.withOpacity(0.7),
              Theme.of(context).accentColor,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
      ),
    );
  }
}
