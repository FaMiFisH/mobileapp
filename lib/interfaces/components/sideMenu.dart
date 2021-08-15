import 'package:alevelcoursework/interfaces/components/sideMenuItem.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../responsive.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: double.infinity,
        color: Theme.of(context).primaryColorDark,
        padding: EdgeInsets.all(defaultPadding),
        child: SafeArea(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Column(children: [
              Row(
                children: [
                  Image(
                    image: AssetImage('assets/logo.png'),
                    height: 50.0,
                  ),
                  Spacer(),
                  // We don't want to show this close button on Desktop mood
                  if (!Responsive.isDesktop(context)) CloseButton(),
                ],
              ),
            ]),
          ),
        ));
  }
}
