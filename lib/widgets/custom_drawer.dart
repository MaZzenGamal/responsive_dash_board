import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/user_info_list_tile.dart';

import '../generated/assets.dart';
import 'drawer_items_list_view.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const Column(
        children: [
          UserInfoListTile(
            title: 'Lekan Okeowo',
            subtitle: 'demo@gmail.com',
            image: Assets.imagesImage3,
          ),
          SizedBox(
            height: 8,
          ),
          DrawerItemsListView()
        ],
      ),
    );
  }
}


