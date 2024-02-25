import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';

import 'active_and_inActive_item.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({
    Key? key,
    required this.drawerItemModel,
    required this.isActive,
  }) : super(key: key);

  final DrawerItemModel drawerItemModel;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveDrawerItem(drawerItemModel: drawerItemModel)
        : InActiveDrawerItem(drawerItemModel: drawerItemModel);
  }
}


