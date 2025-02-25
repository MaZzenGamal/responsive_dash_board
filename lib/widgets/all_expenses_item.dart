import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expenses_item_model.dart';
import 'package:responsive_dash_board/widgets/active_and_inAvtive_allExpenses_Item.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem(
      {Key? key, required this.isActive, required this.allExpensesItemModel})
      : super(key: key);

  final AllExpensesItemModel allExpensesItemModel;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveAllExpensesItem(allExpensesItemModel: allExpensesItemModel)
        : InActiveAllExpensesItem(allExpensesItemModel: allExpensesItemModel);
  }
}
