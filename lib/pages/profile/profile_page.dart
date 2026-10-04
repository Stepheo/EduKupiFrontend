import 'package:edu_kupi/providers/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProfilePage extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = context.watch<ThemeProvider>();
    
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Темная тема',
              ),
              // Переключатель тёмной темы
              Switch(value: themeProvider.theme == ThemeMode.dark,
                onChanged: (_) {
                  themeProvider.toggleTheme();
                }
              ),
            ],
          )
        ],
      ),
    );
  }
}