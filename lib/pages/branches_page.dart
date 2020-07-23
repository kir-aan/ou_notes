import 'package:flutter/material.dart';
import '../models/dummyData.dart';
import '../widgets/branch_item.dart';

class BranchesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OU Notes'),
      ),
      body: GridView(
        padding: const EdgeInsets.all(20),
        children: DUMMY_BRANCHES.map((b) => BranchItem(b.id, b.name)).toList(),
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
