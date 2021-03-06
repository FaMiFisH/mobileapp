import 'package:flutter/material.dart';
import 'package:websafe_svg/websafe_svg.dart';

import '../../constants.dart';

class SideMenuItem extends StatelessWidget {
  final bool isActive, showBorder;
  final IconData icon;
  final String title;
  final VoidCallback press;

  const SideMenuItem({
    Key? key,
    this.isActive = false,
    this.showBorder = true,
    required this.icon,
    required this.title,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: InkWell(
        onTap: press,
        child: Row(
          children: <Widget>[
            Expanded(
              child: Container(
                padding: EdgeInsets.only(bottom: 15, right: 5),
                decoration: showBorder
                    ? BoxDecoration(
                        border: Border(
                          bottom: BorderSide(color: Color(0xFFDFE2EF)),
                        ),
                      )
                    : null,
                child: Row(
                  children: [
                    Icon(
                      icon,
                      color: (isActive)
                          ? Theme.of(context).primaryColorDark
                          : Colors.grey,
                      size: 20.0,
                    ),
                    SizedBox(width: 8.0),
                    Text(
                      title,
                      style: TextStyle(
                        color: (isActive) ? Colors.white : Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
