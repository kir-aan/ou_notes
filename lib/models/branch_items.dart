import 'package:flutter/material.dart';

class BranchItem extends StatelessWidget {
  final String title;
  BranchItem(this.title);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Text(
        title,
        style: Theme.of(context).textTheme.headline1,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
          colors: [
            Theme.of(context).accentColor.withOpacity(0.7),
            Theme.of(context).accentColor,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
    );
  }
}
