class Preferences {
  /// intially the app is on light theme
  /// changes the theme everytime the function is called
  static var isDarkTheme = false;
  static Future<void> toggleTheme() async {
    isDarkTheme = !isDarkTheme;
  }
}
