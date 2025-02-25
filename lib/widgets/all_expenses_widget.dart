import 'package:flutter/material.dart';

import 'all_expenses_header.dart';
import 'all_expenses_item_list_view.dart';

class AllExpensesWidget extends StatelessWidget {
  const AllExpensesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12)),
      child: const Column(
        children: [
          AllExpensesHeader(),
          SizedBox(
            height: 16,
          ),
          AllExpensesItemListView(),
        ],
      ),
    );
  }
}
