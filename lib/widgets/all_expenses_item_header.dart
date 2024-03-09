import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({
    Key? key,
    required this.image,
    this.imageBackgroundColor,
    this.imageColor,
    this.arrowColor,
  }) : super(key: key);

  final String image;
  final Color? imageBackgroundColor, imageColor, arrowColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: imageBackgroundColor ?? const Color(0xffFAFAFA),
          radius: 30,
          child: SvgPicture.asset(
            image,
            colorFilter: ColorFilter.mode(
                imageColor ?? const Color(0xff4EB7F2), BlendMode.srcIn),
          ),
        ),
        const Spacer(),
        Transform.rotate(
          angle: 3.14159,
          child: Icon(
            Icons.arrow_back_ios_rounded,
            color: arrowColor ?? const Color(0xff064061),
          ),
        )
      ],
    );
  }
}
