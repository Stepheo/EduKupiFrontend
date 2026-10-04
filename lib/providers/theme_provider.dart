import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode _theme = ThemeMode.system;

  ThemeMode get theme => _theme;

  ThemeProvider() {
    initTheme();
  }

  // Читаем сохранённую тему из памяти телефона (0 - светлая, 1 - тёмная)
  Future<void> initTheme() async {
    final prefs = await SharedPreferences.getInstance();

    final theme = prefs.getInt('theme');

    if (theme == null) {
      await prefs.setInt('theme', 0);
      _theme = ThemeMode.light;
    } else if (theme == 1) {
      _theme = ThemeMode.dark;
    } else {
      _theme = ThemeMode.system;
    }

    notifyListeners();
  }

  // Переключаем тему и запоминаем выбор
  Future<void> toggleTheme() async {
    final prefs = await SharedPreferences.getInstance();

    if (_theme == ThemeMode.light) {
      _theme = ThemeMode.dark;
      await prefs.setInt('theme', 1);
    } else {
      _theme = ThemeMode.light;
      await prefs.setInt('theme', 0);
    }

    notifyListeners();
  }
}