import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../themes.dart';

class ThemeSwitch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Switch.adaptive(
      // gets the active theme
      value: themeProvider.isDarkTheme,
      // sets the new theme everytime the switch is toggled
      onChanged: (value) {
        final provider = Provider.of<ThemeProvider>(context, listen: false);
        provider.setTheme(value);
      },
    );
  }
}
