import 'package:alevelcoursework/interfaces/components/sideMenuItem.dart';
import 'package:alevelcoursework/interfaces/screens/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants.dart' as constants;
import '../../main.dart';
import '../../responsive.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  // logout function
  void logout() {
    runApp(MyApp());
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      color: Theme.of(context).primaryColorDark,
      padding: EdgeInsets.fromLTRB(12.0, 12.0, 0.0, 12.0),
      child: SafeArea(
        //padding: EdgeInsets.symmetric(horizontal: constants.defaultPadding),
        child: Column(children: [
          // header
          Expanded(
            flex: 3,
            child: Row(
              children: [
                Image(
                  image: AssetImage('assets/logo.png'),
                  height: 50.0,
                ),
                Spacer(),
                // doesn't show close button on desktop mode
                if (!Responsive.isDesktop(context)) CloseButton(),
              ],
            ),
          ),
          // main body
          Expanded(
            flex: 5,
            child: Column(children: [
              SizedBox(height: constants.defaultPadding),
              SideMenuItem(
                title: "Home",
                icon: Icons.home,
                press: () {
                  Navigator.of(context).pushNamed("Home");
                },
              ),
              SideMenuItem(
                title: "Timetable",
                icon: Icons.calendar_view_month,
                press: () {},
              ),
            ]),
          ),
          // footer
          Expanded(
            flex: 2,
            child: Column(
              children: <Widget>[
                Container(
                  child: ElevatedButton(
                      onPressed: () => logout(),
                      child: Text("Logout",
                          style: Theme.of(context).textTheme.button)),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
