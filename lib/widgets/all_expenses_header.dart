import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/styles.dart';

import 'range_options.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          'All Expenses',
          style: Styles.styleSemiBold20,
        ),
        SizedBox(
          width: 18,
        ),
        Spacer(),
        RangeOptions()
      ],
    );
  }
}
