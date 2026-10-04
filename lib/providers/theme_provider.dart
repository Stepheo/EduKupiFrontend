import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode _theme = ThemeMode.system;

  ThemeMode get theme => _theme;

  ThemeProvider() {
    initTheme();
  }

  // Читаем сохранённую тему, если ничего нет остается системная
  Future<void> initTheme() async {
    final prefs = await SharedPreferences.getInstance();

    final theme = prefs.getString('theme_mode');

    if (theme != null) {
      _theme = ThemeMode.values.byName(theme);
      notifyListeners();
    }
  }

  // Меняем тему и запоминаем выбор
  Future<void> setTheme(ThemeMode theme) async {
    _theme = theme;
    notifyListeners();

    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('theme_mode', theme.name);
  }
}