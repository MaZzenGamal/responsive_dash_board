import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/utils/styles.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.image});

  final String title;
  final String subtitle;
  final String image;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 32,
        child: ClipOval(
          child: SvgPicture.asset(
            image,
          ),
        ),
      ),
      title: Text(title),
      titleTextStyle: Styles.styleSemiBold16,
      subtitle: Text(subtitle),
      subtitleTextStyle: Styles.styleRegular12,
    );
  }
}
