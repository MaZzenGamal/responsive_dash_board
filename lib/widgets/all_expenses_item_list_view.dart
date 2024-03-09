import 'package:flutter/material.dart';

import '../generated/assets.dart';
import '../models/all_expenses_item_model.dart';
import 'all_expenses_item.dart';

class AllExpensesItemListView extends StatefulWidget {
  const AllExpensesItemListView({Key? key}) : super(key: key);

  @override
  State<AllExpensesItemListView> createState() =>
      _AllExpensesItemListViewState();
}

class _AllExpensesItemListViewState extends State<AllExpensesItemListView> {
  final List<AllExpensesItemModel> items = const [
    AllExpensesItemModel(
        image: Assets.imagesBalance,
        name: 'Balance',
        date: 'April 2022',
        price: '\$20,129'),
    AllExpensesItemModel(
        image: Assets.imagesIncome,
        name: 'Income',
        date: 'April 2022',
        price: '\$20,129'),
    AllExpensesItemModel(
        image: Assets.imagesExpenses,
        name: 'Expenses',
        date: 'April 2022',
        price: '\$20,129'),
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: items.asMap().entries.map((e) {
        int index = e.key;
        var item = e.value;
        if (index == 1) {
          return Expanded(
            child: GestureDetector(
              onTap: (){
                changeIndex(index);
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: AllExpensesItem(
                  allExpensesItemModel: item,
                  isActive: currentIndex == index,
                ),
              ),
            ),
          );
        } else {
          return Expanded(
            child: GestureDetector(
              onTap: (){
                changeIndex(index);
              },
              child: AllExpensesItem(
              allExpensesItemModel: item,
              isActive: currentIndex == index,
            ),
            ),
          );
        }
      }).toList(),
    );
  }

  void changeIndex(int index) {
    currentIndex = index;
    setState(() {

    });
  }
}
