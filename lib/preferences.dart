import 'package:shared_preferences/shared_preferences.dart';

class Preferences {
  /// intially the app is on light theme
  /// changes the theme everytime the function is called
  static Future<bool> getTheme() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    // returns false if value does not exist
    return prefs.getBool('isDarkTheme') ?? false;
  }

  /// set the theme of the app
  toggleTheme() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool? isDark = prefs.getBool('isDarkTheme');
    bool newValue;
    if (isDark == null) {
      newValue = false;
    } else {
      newValue = !isDark;
    }
    prefs.setBool('isDarkTheme', newValue);
  }
}
