import 'package:flutter/material.dart';
import 'package:websafe_svg/websafe_svg.dart';

import '../../constants.dart';

class SideMenuItem extends StatelessWidget {
  final bool isActive, isHover, showBorder;
  final int itemCount;
  final String iconSrc, title;
  final VoidCallback press;

  const SideMenuItem({
    required Key key,
    this.isActive = false,
    this.isHover = false,
    required this.itemCount,
    this.showBorder = true,
    required this.iconSrc,
    required this.title,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(defaultPadding),
      child: InkWell(
        onTap: press,
        child: Row(
          children: <Widget>[
            (isActive || isHover)
                ? Image(image: AssetImage("assets/logo.png"))
                : SizedBox(width: 15),
          ],
        ),
      ),
    );
  }
}
